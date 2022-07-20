contract main {




// =====================  Runtime code  =====================


#
#  - Projects(uint256 arg1)
#  - sub_25edb174(?)
#  - sub_75b893a3(?)
#  - sub_fe3888a3(?)
#
address fundAddress;
address adminAddress;
uint256 PID;
mapping of struct stor3;
mapping of address sub_89fe08f8;
array of uint256 sub_52da887a;
mapping of uint256 sub_dd420446;
mapping of struct stor7;
uint256 stor8;
mapping of uint256 sub_fe495f8b;
uint256 sub_43e8533e;

function sub_43e8533e(?) {
    return sub_43e8533e
}

function sub_52da887a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_52da887a[arg1]
    return sub_52da887a[arg1][arg2]
}

function PID() {
    return PID
}

function sub_89fe08f8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_89fe08f8[arg1]
}

function sub_dd420446(?) {
    require ext_code.size(msg.sender) > 0
    return sub_dd420446[address(msg.sender)]
}

function fundAddress() {
    return fundAddress
}

function admin() {
    return adminAddress
}

function sub_fe495f8b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fe495f8b[arg1]
}

function _fallback() payable {
    revert
}

function sub_e5011260(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require adminAddress == msg.sender
    adminAddress = address(arg1)
    fundAddress = address(arg2)
    stor8 = arg3
}

function sub_1e1972c8(?) {
    if fundAddress != msg.sender:
        revert with 0, 'You can not do that!!!'
    call fundAddress with:
       value sub_43e8533e wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_43e8533e = 0
}

function sub_36616f74(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require sub_89fe08f8[arg1] == msg.sender
    call stor3[arg1].field_768 with:
       value sub_fe495f8b[stor3[arg1].field_768] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_fe495f8b[stor3[arg1].field_768] = 0
}

function sub_a7c4f272(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    require ext_code.size(msg.sender) > 0
    require stor3[arg1].field_1280 == msg.sender
    require stor3[arg1].field_1792 == 2
    stor7[arg1][address(arg2)].field_0 = address(arg2)
    if stor7[arg1][address(arg2)].field_256:
        if stor7[arg1][address(arg2)].field_256 == stor7[arg1][address(arg2)].field_257 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor7[arg1][address(arg2)][1][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor7[arg1][address(arg2)].field_256 = 0
            idx = 0
            while stor7[arg1][address(arg2)].field_257 + 31 / 32 > idx:
                stor7[arg1][address(arg2)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor7[arg1][address(arg2)].field_256 == stor7[arg1][address(arg2)].field_257 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor7[arg1][address(arg2)][1][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor7[arg1][address(arg2)].field_256 = 0
            idx = 0
            while stor7[arg1][address(arg2)].field_257 + 31 / 32 > idx:
                stor7[arg1][address(arg2)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    stor7[arg1][address(arg2)].field_512 = block.timestamp
    stor7[arg1][address(arg2)].field_768 = arg4
    stor7[arg1][address(arg2)].field_1024 = 1
    if not arg4:
        if sub_fe495f8b[stor3[arg1].field_768] > -1:
            revert with 'NH{q', 17
    else:
        if arg4 and stor8 > -1 / arg4:
            revert with 'NH{q', 17
        if not arg4:
            revert with 'NH{q', 18
        if arg4 * stor8 / arg4 != stor8:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_fe495f8b[stor3[arg1].field_768] > -(arg4 * stor8 / 100) - 1:
            revert with 'NH{q', 17
        sub_fe495f8b[stor3[arg1].field_768] += arg4 * stor8 / 100
    if not arg4:
        if arg4 < 0:
            revert with 'NH{q', 17
        if sub_43e8533e > -arg4 - 1:
            revert with 'NH{q', 17
        sub_43e8533e += arg4
    else:
        if arg4 and stor8 > -1 / arg4:
            revert with 'NH{q', 17
        if not arg4:
            revert with 'NH{q', 18
        if arg4 * stor8 / arg4 != stor8:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg4 < arg4 * stor8 / 100:
            revert with 'NH{q', 17
        if sub_43e8533e > -arg4 + (arg4 * stor8 / 100) - 1:
            revert with 'NH{q', 17
        sub_43e8533e = sub_43e8533e + arg4 - (arg4 * stor8 / 100)
    return 1
}

function sub_f4a8f86f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require msg.sender
    require msg.value > 0
    stor7[arg1][address(msg.sender)].field_0 = msg.sender
    if stor7[arg1][address(msg.sender)].field_256:
        if stor7[arg1][address(msg.sender)].field_256 == stor7[arg1][address(msg.sender)].field_257 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor7[arg1][address(msg.sender)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor7[arg1][address(msg.sender)].field_256 = 0
            idx = 0
            while stor7[arg1][address(msg.sender)].field_257 + 31 / 32 > idx:
                stor7[arg1][address(msg.sender)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor7[arg1][address(msg.sender)].field_256 == stor7[arg1][address(msg.sender)].field_257 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor7[arg1][address(msg.sender)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor7[arg1][address(msg.sender)].field_256 = 0
            idx = 0
            while stor7[arg1][address(msg.sender)].field_257 + 31 / 32 > idx:
                stor7[arg1][address(msg.sender)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    stor7[arg1][address(msg.sender)].field_512 = block.timestamp
    stor7[arg1][address(msg.sender)].field_768 = msg.value
    stor7[arg1][address(msg.sender)].field_1024 = 1
    if not msg.value:
        if sub_fe495f8b[stor3[arg1].field_768] > -1:
            revert with 'NH{q', 17
    else:
        if msg.value and stor8 > -1 / msg.value:
            revert with 'NH{q', 17
        if not msg.value:
            revert with 'NH{q', 18
        if msg.value * stor8 / msg.value != stor8:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_fe495f8b[stor3[arg1].field_768] > -(msg.value * stor8 / 100) - 1:
            revert with 'NH{q', 17
        sub_fe495f8b[stor3[arg1].field_768] += msg.value * stor8 / 100
    if not msg.value:
        if msg.value < 0:
            revert with 'NH{q', 17
        if sub_43e8533e > -msg.value - 1:
            revert with 'NH{q', 17
        sub_43e8533e += msg.value
    else:
        if msg.value and stor8 > -1 / msg.value:
            revert with 'NH{q', 17
        if not msg.value:
            revert with 'NH{q', 18
        if msg.value * stor8 / msg.value != stor8:
            revert with 0, 'SafeMath: multiplication overflow'
        if msg.value < msg.value * stor8 / 100:
            revert with 'NH{q', 17
        if sub_43e8533e > -msg.value + (msg.value * stor8 / 100) - 1:
            revert with 'NH{q', 17
        sub_43e8533e = sub_43e8533e + msg.value - (msg.value * stor8 / 100)
}

function sub_fb175f60(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if stor7[arg1][arg2].field_256:
        if stor7[arg1][arg2].field_256 == stor7[arg1][arg2].field_257 < 32:
            revert with 'NH{q', 34
        if stor7[arg1][arg2].field_256:
            if stor7[arg1][arg2].field_256 == stor7[arg1][arg2].field_257 < 32:
                revert with 'NH{q', 34
            if stor7[arg1][arg2].field_257:
                if 31 >= stor7[arg1][arg2].field_257:
                    mem[128] = 256 * stor7[arg1][arg2].field_264
                else:
                    mem[128] = stor7[arg1][arg2][1].field_0
                    idx = 128
                    s = 0
                    while stor7[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor7[arg1][arg2][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor7[arg1][arg2].field_256 == stor7[arg1][arg2].field_257 < 32:
                revert with 'NH{q', 34
            if stor7[arg1][arg2].field_257:
                if 31 >= stor7[arg1][arg2].field_257:
                    mem[128] = 256 * stor7[arg1][arg2].field_264
                else:
                    mem[128] = stor7[arg1][arg2][1].field_0
                    idx = 128
                    s = 0
                    while stor7[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor7[arg1][arg2][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor7[arg1][arg2].field_0, 
               Array(len=2 * Mask(256, -1, stor7[arg1][arg2].field_257), data=mem[128 len ceil32(stor7[arg1][arg2].field_257)]),
               stor7[arg1][arg2].field_512,
               stor7[arg1][arg2].field_768,
               bool(stor7[arg1][arg2].field_1024)
    if stor7[arg1][arg2].field_256 == stor7[arg1][arg2].field_257 < 32:
        revert with 'NH{q', 34
    if stor7[arg1][arg2].field_256:
        if stor7[arg1][arg2].field_256 == stor7[arg1][arg2].field_257 < 32:
            revert with 'NH{q', 34
        if stor7[arg1][arg2].field_257:
            if 31 >= stor7[arg1][arg2].field_257:
                mem[128] = 256 * stor7[arg1][arg2].field_264
            else:
                mem[128] = stor7[arg1][arg2][1].field_0
                idx = 128
                s = 0
                while stor7[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor7[arg1][arg2][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor7[arg1][arg2].field_256 == stor7[arg1][arg2].field_257 < 32:
            revert with 'NH{q', 34
        if stor7[arg1][arg2].field_257:
            if 31 >= stor7[arg1][arg2].field_257:
                mem[128] = 256 * stor7[arg1][arg2].field_264
            else:
                mem[128] = stor7[arg1][arg2][1].field_0
                idx = 128
                s = 0
                while stor7[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor7[arg1][arg2][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor7[arg1][arg2].field_0, 
           Array(len=stor7[arg1][arg2].field_256, data=mem[128 len ceil32(stor7[arg1][arg2].field_257)]),
           stor7[arg1][arg2].field_512,
           stor7[arg1][arg2].field_768,
           bool(stor7[arg1][arg2].field_1024)
}

function sub_288ea935(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if stor7[arg1][address(arg2)].field_256:
        if stor7[arg1][address(arg2)].field_256 == stor7[arg1][address(arg2)].field_257 < 32:
            revert with 'NH{q', 34
        if stor7[arg1][address(arg2)].field_256:
            if stor7[arg1][address(arg2)].field_256 == stor7[arg1][address(arg2)].field_257 < 32:
                revert with 'NH{q', 34
            if stor7[arg1][address(arg2)].field_257:
                if 31 >= stor7[arg1][address(arg2)].field_257:
                    mem[128] = 256 * stor7[arg1][address(arg2)].field_264
                else:
                    mem[128] = stor7[arg1][address(arg2)][1].field_0
                    idx = 128
                    s = 0
                    while stor7[arg1][address(arg2)].field_257 + 96 > idx:
                        mem[idx + 32] = stor7[arg1][address(arg2)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor7[arg1][address(arg2)].field_256 == stor7[arg1][address(arg2)].field_257 < 32:
                revert with 'NH{q', 34
            if stor7[arg1][address(arg2)].field_257:
                if 31 >= stor7[arg1][address(arg2)].field_257:
                    mem[128] = 256 * stor7[arg1][address(arg2)].field_264
                else:
                    mem[128] = stor7[arg1][address(arg2)][1].field_0
                    idx = 128
                    s = 0
                    while stor7[arg1][address(arg2)].field_257 + 96 > idx:
                        mem[idx + 32] = stor7[arg1][address(arg2)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor7[arg1][address(arg2)].field_0, 
               Array(len=2 * Mask(256, -1, stor7[arg1][address(arg2)].field_257), data=mem[128 len ceil32(stor7[arg1][address(arg2)].field_257)]),
               stor7[arg1][address(arg2)].field_512,
               stor7[arg1][address(arg2)].field_768,
               bool(stor7[arg1][address(arg2)].field_1024)
    if stor7[arg1][address(arg2)].field_256 == stor7[arg1][address(arg2)].field_257 < 32:
        revert with 'NH{q', 34
    if stor7[arg1][address(arg2)].field_256:
        if stor7[arg1][address(arg2)].field_256 == stor7[arg1][address(arg2)].field_257 < 32:
            revert with 'NH{q', 34
        if stor7[arg1][address(arg2)].field_257:
            if 31 >= stor7[arg1][address(arg2)].field_257:
                mem[128] = 256 * stor7[arg1][address(arg2)].field_264
            else:
                mem[128] = stor7[arg1][address(arg2)][1].field_0
                idx = 128
                s = 0
                while stor7[arg1][address(arg2)].field_257 + 96 > idx:
                    mem[idx + 32] = stor7[arg1][address(arg2)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor7[arg1][address(arg2)].field_256 == stor7[arg1][address(arg2)].field_257 < 32:
            revert with 'NH{q', 34
        if stor7[arg1][address(arg2)].field_257:
            if 31 >= stor7[arg1][address(arg2)].field_257:
                mem[128] = 256 * stor7[arg1][address(arg2)].field_264
            else:
                mem[128] = stor7[arg1][address(arg2)][1].field_0
                idx = 128
                s = 0
                while stor7[arg1][address(arg2)].field_257 + 96 > idx:
                    mem[idx + 32] = stor7[arg1][address(arg2)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor7[arg1][address(arg2)].field_0, 
           Array(len=stor7[arg1][address(arg2)].field_256, data=mem[128 len ceil32(stor7[arg1][address(arg2)].field_257)]),
           stor7[arg1][address(arg2)].field_512,
           stor7[arg1][address(arg2)].field_768,
           bool(stor7[arg1][address(arg2)].field_1024)
}



}
