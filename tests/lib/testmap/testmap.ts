import "allocator/arena";
import { Log } from "../../../src/log";
import { Contract } from "../../../src/contract";
import { RNAME, NAME } from "../../../src/account";
import { ultrain_assert } from "../../../src/utils";
import { Map } from "../../../lib/map";
import { DBManager } from "../../../src/dbmanager";

class Obj implements Serializable {
    x: u8;
    y: u8;

    constructor() {
        this.x = 6;
        this.y = 8;
    }

    // public serialize(ds: DataStream): void {
    //     ds.write<u8>(this.x);
    //     ds.write<u8>(this.y);
    // }

    // public deserialize(ds: DataStream): void {
    //     this.x = ds.read<u8>();
    //     this.y = ds.read<u8>();
    // }

    @operator("==")
    public static __eq(lhs: Obj, rhs: Obj): boolean {
        return lhs.x == rhs.x && lhs.y == rhs.y;
    }
}

class A implements Serializable {
    int_int_Map: Map<u8, u8> = new Map<u8, u8>();
    int_string_map: Map<u16, string> = new Map<u16, string>();
    int_boolean_map: Map<u32, boolean> = new Map<u32, boolean>();
    int_object_map: Map<u64, Obj> = new Map<u64, Obj>();

    // int_int_array_map: Map<u8, u8[]> = new Map<u8, u8[]>();
    // int_string_array_map: Map<u8, string[]> = new Map<u8, string[]>();
    int_object_array_map: Map<u8, Obj[]> = new Map<u8, Obj[]>();

    public serialize(ds: DataStream): void {
        Log.s("A.Serializable 1").flush();
        this.int_int_Map.serialize(ds);
        Log.s("A.Serializable 2").flush();
        this.int_string_map.serialize(ds);
        Log.s("A.Serializable 3").flush();
        this.int_boolean_map.serialize(ds);
        Log.s("A.Serializable 4").flush();
        this.int_object_map.serialize(ds);
        Log.s("A.Serializable 5").flush();
        // this.int_int_array_map.serialize(ds);
        // this.int_string_array_map.serialize(ds);
        this.int_object_array_map.serialize(ds);
    }

    public deserialize(ds: DataStream): void {
        Log.s("A.Deserializable 1").flush();
        this.int_int_Map.deserialize(ds);
        Log.s("A.Deserializable 2").flush();
        this.int_string_map.deserialize(ds);
        Log.s("A.Deserializable 3").flush();
        this.int_boolean_map.deserialize(ds);
        Log.s("A.Deserializable 4").flush();
        this.int_object_map.deserialize(ds);
        Log.s("A.Deserializable 5").flush();
        // this.int_int_array_map.deserialize(ds);
        // this.int_string_array_map.deserialize(ds);
        this.int_object_array_map.deserialize(ds);
    }
}


@database(A, "aaaaa")
class MapTest extends Contract{

    @action
    teststore(a: u64):void{
        let mp = new A();
        mp.int_boolean_map.set(1, false);
        mp.int_boolean_map.set(11, true);

        mp.int_int_Map.set(2, 8);
        mp.int_int_Map.set(22, 88);

        mp.int_string_map.set(3, "kkk");
        mp.int_string_map.set(33, "jjj");

        mp.int_object_map.set(4, new Obj());
        mp.int_object_map.set(44, new Obj(100, 200));

        // mp.int_int_array_map.set(2, [0, 0, 0, 0]);
        // mp.int_int_array_map.set(22, [1, 1, 1, 1]);

        // mp.int_string_array_map.set(3, ["jjj", "jjj", "jjj"]);
        // mp.int_string_array_map.set(33, ["kkk", "kkk", "kkk"]);

        mp.int_object_array_map.set(4, [new Obj(), new Obj(18, 36), new Obj()]);


        mp.string_int_map.set("aaa", 8);
        mp.string_int_map.set("bbb", 10);
        mp.string_int_array_map.set("aaa", [1, 2, 3, 4]);
        mp.string_int_array_map.set("bbb", [5, 6, 7, 8]);

        mp.string_string_map.set("aaa", "xxx");
        mp.string_string_map.set("bbb", "yyy");
        mp.string_string_array_map.set("aaa", ["mmm", "nnn", "ooo"]);
        mp.string_string_array_map.set("bbb", ["ppp", "qqq", "rrr"]);

        mp.string_object_map.set("aaa", new Obj(10, 20));
        mp.string_object_map.set("bbb", new Obj());
        mp.string_object_array_map.set("aaa", [new Obj(10, 20), new Obj(66, 88), new Obj(25, 32)]);
        mp.string_object_array_map.set("bbb", [new Obj(20, 10), new Obj(88, 66), new Obj(32, 25)]);

        mp.obj_int_map.set(new Obj(1, 2), 8);
        mp.obj_int_map.set(new Obj(3, 4), 9);
        mp.obj_int_array_map.set(new Obj(9, 9), [9, 10, 11, 12]);
        mp.obj_int_array_map.set(new Obj(10, 10), []);

        mp.obj_string_map.set(new Obj(1, 2), "aaa");
        mp.obj_string_map.set(new Obj(3, 4), "bbb");
        mp.obj_string_array_map.set(new Obj(1, 2), ["aaa", "bbb", "ccc"]);
        mp.obj_string_array_map.set(new Obj(3, 4), ["ddd", "eee", "fff"]);

        mp.obj_obj_map.set(new Obj(1, 2), new Obj(8, 9));
        mp.obj_obj_map.set(new Obj(3, 4), new Obj(10, 11));
        mp.obj_obj_array_map.set(new Obj(1, 2), [new Obj(), new Obj(3, 4)]);
        mp.obj_obj_array_map.set(new Obj(3, 4), []);

        let db = new DBManager<A>(NAME("aaaaa"), this.receiver, NAME("aaaaa"));
        db.emplace(this.receiver, mp);
    }

    @action
    testrestore(b: u64): void {
        let db = new DBManager<A>(NAME("aaaaa"), this.receiver, NAME("aaaaa"));
        let mp = new A();
        let existing = db.exists(0);
        ultrain_assert(existing, "can not get stored map");
        if (existing) {
            db.get(0, mp);

            ultrain_assert(mp.int_boolean_map.get(1) == false, "int boolean false map failed");
            ultrain_assert(mp.int_boolean_map.get(11) == true, "int boolean true map failed");

            ultrain_assert(mp.int_int_Map.get(2) == 8, "int int 8 map failed");
            ultrain_assert(mp.int_int_Map.get(22) == 88, "int int 88 map failed");

            ultrain_assert(mp.int_string_map.get(3) == "kkk", "int string kkk asserted.");
            ultrain_assert(mp.int_string_map.get(33) == "jjj", "int string jjj asserted.");

            ultrain_assert(mp.int_object_map.get(4).x ==6 && mp.int_object_map.get(4).y == 8, "int object 4 failed.");
            ultrain_assert(mp.int_object_map.get(44).x ==100 && mp.int_object_map.get(44).y == 200, "int object 44 failed.");

            // let intarr2 = mp.int_int_array_map.get(2);
            // ultrain_assert(intarr2.length == 4, "int int array 2 length failed.");
            // for (let i: i32 = 0; i < 4; i++) {
            //     ultrain_assert(intarr2[i] == 0, "int int array 2 value failed.");
            // }

            // let intarr22 = mp.int_int_array_map.get(22);
            // ultrain_assert(intarr22.length == 4, "int int array 22 length failed.");
            // for (let i: i32 = 0; i < 4; i++) {
            //     ultrain_assert(intarr22[i] == 1, "int int array 22 value failed.");
            // }

            // let intstr3 = mp.int_string_array_map.get(3);
            // ultrain_assert(intstr3.length == 3, "int string array 3 length failed.");
            // for (let i: i32 = 0; i < 3; i++) {
            //     ultrain_assert(intstr3[i] == "jjj", "int string array 3 value failed.");
            // }

            // let intstr33 = mp.int_string_array_map.get(33);
            // ultrain_assert(intstr33.length == 3, "int string array 33 length failed.");
            // for (let i: i32 = 0; i < 3; i++) {
            //     ultrain_assert(intstr33[i] == "kkk", "int string array 33 value failed.");
            // }

            let objs: Obj[] = mp.int_object_array_map.get(4);
            ultrain_assert(objs.length == 3, "objs length failed.");
            for (let i: i32 = 0; i < objs.length; i++) {
                Log.s("i = ").i(i).s(" x = ").i(objs[i].x).s(", y = ").i(objs[i].y).flush();
            }
            // ultrain_assert(objs[0].x ==6 && objs[0].y == 8, "objs[0] failed.");
            // ultrain_assert(objs[1].x ==18 && objs[1].y == 36, "objs[1] failed.");
            // ultrain_assert(objs[2].x ==6 && objs[2].y == 8, "objs[2] failed.");
        }
    }
}

