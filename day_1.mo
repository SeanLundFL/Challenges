import Array "mo:base/Array"

actor {


    //Challenge 1
    
    public func add( n : Nat, m : Nat) : async Nat {
        return(n+m)
    };

    //Challenge 2
    public func square( n : Nat) : async Nat {
    return(n * n);
    };

    //Challenge 3
    public func days_to_sec(n : Nat) : async Nat {
        return(n * 24 * 60 * 60);
    };

    //Challenge 4
    
    //Create a mutable variable
    var counter : Nat = 0;

    public func increment_counter(n : Nat) : async Nat {
        counter := counter + n;
        return(counter);
    };

//     //Shortcut
// public func increment_counter_shortcut(n : Nat) : async Nat {
//     counter += n;
//     return(counter); 
//};

public func clear_counter() : async () {
    counter := 0;
    return;
};
 //Challenge 5


    public func divide(n : Nat, m : Nat) : async Nat {
    return(n % m);
 };

public func divide1(n : Nat, m : Nat) : async Text {
    let remainder : Nat = n / m;
    if(n % m == 0) {
        return("true");
    } else {
        return("false");
        }
    };
     //Challenge 6

public func is_even(n : Nat) : async Bool {
    if(n % 2 == 0) {
        return(true);
    } else {
        return(false);
        }
    };
    //Challenge 7
    let array : [Nat] = [1, 2, 3];

    public func sum_of_array(array : [Nat]) : async Nat {
        if(array.size() == 0) {
            return 0
        };
        var counter : Nat =0;
        for(value in array.vals()){
        counter := counter + value;
        };
        return (counter);
    };
    //Challenge 8
    let array : [Nat] = [1, 2, 3];

    public func max_of_array(array : [Nat]) : async Nat {
        if(array.size() == 0) {
            return 0
        };
        var length = 0, max != ;
        for(value in array.vals()){
        max = length + value;
        };
        return (max);
    };
    //Challenge 9
    let xs : [Nat] = [1, 2, 3];

public func remove_nat_array(array: [Nat], xs: Nat) :async [Nat] {
    Array.filter(array, func(val: Nat) : Bool { value != val}); {
        var f = func(n : Nat) : Bool {        
            if(n==2) {
                return false
            }; else {
                return true
                }
            }
        };
        return(Array.filter(b, f));
    };
    //Challenge 10
    let xs : [Nat] = [1, 5, 10];
    let ys : [Nat] = [2, 12, 15];

public func push_array(xs : Nat, ys : [Nat]) : async [Nat] {
    let new_array : [Nat] = Array.append<Nat>(ys, [xs]);
    return(new_array);
};
}