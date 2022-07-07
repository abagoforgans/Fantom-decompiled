contract main {




// =====================  Runtime code  =====================


const sub_77a7e77d(?) = 0xffffffffffffffffffffffffffffffffffffffff

const sub_a65f51b0(?) = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const WFTM = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


function _fallback() payable {
    revert
}

function sub_dcab1c03(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(arg1) == address(arg2):
        revert with 0, 'invalid request'
    if address(arg1) == 0xffffffffffffffffffffffffffffffffffffffff:
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg2):
            return 32, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 96, arg3, 4, 0, 0
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg1):
        if address(arg2) == 0xffffffffffffffffffffffffffffffffffffffff:
            return 32, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 96, 0, 36, withdraw(uint256 arg1), arg3, 0 >> 32, 0
    if address(arg1) == 0xffffffffffffffffffffffffffffffffffffffff:
        mem[224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[256] = address(arg2)
        idx = 0
        s = 224
        t = 484
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 
               96,
               arg3,
               228,
               0, 0, 128, msg.sender, -1, 2, mem[484 len 64], 0 >> 1568,
               0
    mem[224] = address(arg1)
    if address(arg2) == 0xffffffffffffffffffffffffffffffffffffffff:
        mem[256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        idx = 0
        s = 224
        t = 516
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 
               96,
               0,
               260,
               0, arg3, 0, 160, msg.sender, -1, 2, mem[516 len 64], 0 >> 1824,
               0
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg1):
        mem[256] = address(arg2)
        idx = 0
        s = 224
        t = 516
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 
               96,
               0,
               260,
               0, arg3, 0, 160, msg.sender, -1, 2, mem[516 len 64], 0 >> 1824,
               0
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg2):
        mem[256] = address(arg2)
        idx = 0
        s = 224
        t = 516
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 
               96,
               0,
               260,
               0, arg3, 0, 160, msg.sender, -1, 2, mem[516 len 64], 0 >> 1824,
               0
    mem[256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[288] = address(arg2)
    idx = 0
    s = 224
    t = 548
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return 32, 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 
           96,
           0,
           292,
           0, arg3, 0, 160, msg.sender, -1, 3, mem[548 len 96], 0 >> 2080,
           0
}



}
