contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of address stor6;
array of struct stor7;
mapping of address sub_9026364a;

function owner() {
    return owner
}

function sub_9026364a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_9026364a[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_aa1e7163(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= 24:
        revert with 'NH{q', 50
    if msg.value < stor4[arg1]:
        revert with 0, 'Insufficient payment.'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_a647fe0b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function squares(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 24
    if bool(stor7[arg1].field_0):
        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor7[arg1].field_0):
            if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor7[arg1].field_1):
                if 31 >= uint255(stor7[arg1].field_1):
                    mem[128] = 256 * Mask(248, 0, stor7[arg1].field_8)
                else:
                    mem[128] = stor[sha3((5 * arg1) + 7)]
                    idx = 128
                    s = 0
                    while uint255(stor7[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + 7) + 1]
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor7[arg1].field_1 % 128:
                if 31 >= stor7[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor7[arg1].field_8)
                else:
                    mem[128] = stor[sha3((5 * arg1) + 7)]
                    idx = 128
                    s = 0
                    while stor7[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + 7) + 1]
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor3[arg1], 
               stor4[arg1],
               stor5[arg1],
               stor6[arg1],
               Array(len=2 * Mask(256, -1, uint255(stor7[arg1].field_1)), data=mem[128 len ceil32(uint255(stor7[arg1].field_1))])
    if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor7[arg1].field_0):
        if bool(stor7[arg1].field_0) == uint255(stor7[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor7[arg1].field_1):
            if 31 >= uint255(stor7[arg1].field_1):
                mem[128] = 256 * Mask(248, 0, stor7[arg1].field_8)
            else:
                mem[128] = stor[sha3((5 * arg1) + 7)]
                idx = 128
                s = 0
                while uint255(stor7[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + 7) + 1]
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor7[arg1].field_1 % 128:
            if 31 >= stor7[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor7[arg1].field_8)
            else:
                mem[128] = stor[sha3((5 * arg1) + 7)]
                idx = 128
                s = 0
                while stor7[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + 7) + 1]
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor3[arg1], 
           stor4[arg1],
           stor5[arg1],
           stor6[arg1],
           Array(len=stor7[arg1].field_0 % 128, data=mem[128 len ceil32(stor7[arg1].field_1 % 128)])
}



}
