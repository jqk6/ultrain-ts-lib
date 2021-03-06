/**
 * @author fanliangqin@ultrain.io
 */
import { Asset } from "./asset";
import { PermissionLevel } from "../lib/permission-level";
import { NameEx, NameEx as action_name, NEX, RNEX } from "../lib/name_ex";
import { env as ActionAPI } from "../internal/action.d";

/**
 * to check if permission is authored or not.
 * @param pl PermissionLevel to check
 *
 * @function requirePermissionLevel
 *
 * @example
 * import { requirePermissionLevel } from "ultrain-ts-lib/src/action";
 */
export function requirePermissionLevel(pl: PermissionLevel): void {
    ActionAPI.require_auth2(pl.actor, pl.permission);
}
/**
 * class TransferParams is applied to transfer Tokens from an account to another.
 *
 * @class TransferParams
 *
 * @example
 * import { TransferParams } from "ultrain-ts-lib/src/action";
 */
export class TransferParams implements Serializable {
    public from: u64;
    public to: u64;
    public quantity: Asset;
    public memo: string;

    constructor(from: u64, to: u64, quantity: Asset, memo: string) {
        this.from = from;
        this.to = to;
        this.quantity = new Asset();
        this.memo = memo;
    }

    public serialize(ds: DataStream): void {
        ds.write<u64>(this.from);
        ds.write<u64>(this.to);
        this.quantity.serialize(ds);
        ds.writeString(this.memo);
    }

    public deserialize(ds: DataStream): void {
        this.from = ds.read<u64>();
        this.to = ds.read<u64>();
        if (this.quantity == null) this.quantity = new Asset();
        this.quantity.deserialize(ds);
        this.memo = ds.readString();
    }

    public primaryKey(): u64 { return <u64>0; }
}
/**
 * class ActionImpl is an internal class, for method {@link <i><em>dispatchInline</em></i>}.
 *
 * @class ActionImpl
 *
 * @example
 * import { ActionImpl } from "ultrain-ts-lib/src/action";
 */
export class ActionImpl implements Serializable {
    public account: account_name;
    public name: action_name;
    public authorization: PermissionLevel[];
    public data: u8[];

    constructor() {
        this.account = 0;
        this.name = new NameEx(0, 0);
        this.authorization = [];
        this.data = [];
    }

    public serialize(ds: DataStream): void {
        ds.write<u64>(this.account);
        this.name.serialize(ds);
        ds.writeComplexVector<PermissionLevel>(this.authorization);
        ds.writeVector<u8>(this.data);
    }

    public deserialize(ds: DataStream): void {
        this.account = ds.read<u64>();
        this.name.deserialize(ds);
        this.authorization = ds.readComplexVector<PermissionLevel>();
        this.data = ds.readVector<u8>();
    }

    public primaryKey(): u64 { return <u64>0; }
}
/**
 * @param pl the permission level instance. @see {@link PermissionLevel}
 * @param code the account name of contract which you will send request to.
 * @param act the action/method name which you will invoke of contract.
 * @param params the TransferParams instance. @see {@link TransferParams}
 *
 * @function dispatchInline
 *
 * @example
 * import { dispatchInline } from "ultrain-ts-lib/src/action";
 */
export function dispatchInline(pl: PermissionLevel, code: u64, act: action_name, params: TransferParams): void {
    let actimpl: ActionImpl = new ActionImpl();
    actimpl.authorization.push(pl);
    actimpl.account = code;
    actimpl.name = act;

    let len = DataStream.measure<TransferParams>(params);
    let arr = new Uint8Array(len);
    let ds = new DataStream(<usize>arr.buffer, len);
    params.serialize(ds);
    actimpl.data = ds.toArray<u8>();

    len = DataStream.measure<ActionImpl>(actimpl);
    arr = new Uint8Array(len);
    ds = new DataStream(<usize>arr.buffer, len);
    actimpl.serialize(ds);
    ActionAPI.send_inline(<usize>ds.buffer, ds.pos);
}

/**
 * class Action is applied to access an action's context information.
 * This class is static.
 *
 * @class Action
 *
 * @example
 * import { Action } from "ultrain-ts-lib/src/action";
 */
export class Action {
    /**
     * to get the sender of current action, specially, 'sender' means whose permission key is used by '-p',
     * such as command 'clultrain push action kobe '["params"]' -p james's-key',
     * 'james' is the sender's account name.
     * @returns return the sender's account name.
     */
    public static get sender(): account_name {
        return ActionAPI.current_sender();
    }
    /**
     * to get the receiver's account name of current action.
     * such as command 'clultrain push action kobe '["params"]' -p james's-key',
     * 'kobe' is the receiver's account name.
     */
    public static get receiver(): account_name {
        return current_receiver();
    }
    /**
     * to check if an account name has been authored.
     * @param account the account name which will be checked.
     * @returns boolean value, return true means the account is authored, otherwised false.
     */
    public static hasAuth(account:account_name): boolean {
        return ActionAPI.has_auth(account);
    }
    /**
     * check the authority of a speicfic account name.
     * @param account account_name whose authority is required.
     */
    public static requireAuth(account: account_name): void {
        ActionAPI.require_auth(account);
    }

    /**
     * add account to be notified.
     * @param account account to be notified.
     */
    public static requireRecipient(account: account_name): void {
        ActionAPI.require_recipient(account);
    }

    private _action: NameEx;

    constructor(h: u64, l: u64) {
        this._action = new NameEx(h, l);
    }

    /**
     * get property of action's code, which is an instance of NameEx.
     */
    public get code(): NameEx {
        return this._action;
    }

    /**
     * get property of action's name, which is a human readable string.
     */
    public get name(): string {
        return RNEX(this._action.valueH, this._action.valueL);
    }

    /**
     * equal operation of Action.
     * @param lhs left hand side instance of Action.
     * @param rhs right hand side instance of Action.
     * @returns true or false.
     */
    @operator("==")
    private static _eq(lhs: Action, rhs: Action): boolean {
        return lhs._action == rhs._action;
    }
}

/**
 * convert a string to {@link Action}.
 * @param str an readable string of action name. It can only include: _0-9a-zA-Z
 *
 * @example
 * import { ACTION } from "ultrain-ts-lib/src/action";
 */
export function ACTION(str: string): Action {
    let nex = NEX(str);
    return new Action(nex.valueH, nex.valueL);
}
