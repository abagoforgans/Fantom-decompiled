contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address addressOf;
mapping of uint256 sub_2cfc2716;
uint256 sub_62d03cb7;
uint256 sub_a64fa056;
mapping of uint256 stor5;

function sub_2cfc2716(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2cfc2716[arg1]
}

function sub_62d03cb7(?) payable {
    return sub_62d03cb7
}

function owner() payable {
    return owner
}

function sub_a64fa056(?) payable {
    return sub_a64fa056
}

function addressOf(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return addressOf[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_55215ee1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a64fa056 = arg1
}

function sub_7c4aba81(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor5[address(arg1)]:
        return sub_a64fa056
    return stor5[address(arg1)]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_5a76087c(?) payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Referrer address must not be empty'
    if sub_2cfc2716[address(msg.sender)]:
        sub_2cfc2716[address(msg.sender)] = 0
        addressOf[stor2[address(msg.sender)]] = 0
        stor5[address(msg.sender)] = 0
        if not sub_62d03cb7:
            revert with 0, 17
        sub_62d03cb7--
}

function sub_f80a2d37(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Referrer address must not be empty'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if sub_2cfc2716[mem[(32 * idx) + 140 len 20]]:
            sub_2cfc2716[address(mem[(32 * idx) + 128])] = 0
            addressOf[stor2[mem[(32 * idx) + 140 len 20]]] = 0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 5
            stor5[address(mem[(32 * idx) + 128])] = 0
            if not sub_62d03cb7:
                revert with 0, 17
            sub_62d03cb7--
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_00648cb1(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Referrer code must not be empty'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Referrer address must not be empty'
    if addressOf[arg1]:
        if addressOf[arg1] != address(arg2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot change code mapping - remove referrer first'
        if arg1 != sub_2cfc2716[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot change code mapping - remove referrer first'
    else:
        if sub_2cfc2716[address(arg2)]:
            if addressOf[arg1] != address(arg2):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot change code mapping - remove referrer first'
            if arg1 != sub_2cfc2716[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot change code mapping - remove referrer first'
        else:
            if sub_62d03cb7 == -1:
                revert with 0, 17
            sub_62d03cb7++
    if arg3 != stor5[address(arg2)]:
        stor5[address(arg2)] = arg3
    addressOf[arg1] = address(arg2)
    sub_2cfc2716[address(arg2)] = arg1
}

function sub_e2d0d213(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if addressOf[arg1]:
        revert with 0, 'Referrer code already in use'
    if sub_2cfc2716[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Referrer already mapped to another code'
    if not arg1:
        revert with 0, 'Referrer code must not be empty'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Referrer address must not be empty'
    if addressOf[arg1]:
        if addressOf[arg1] != address(arg2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot change code mapping - remove referrer first'
        if arg1 != sub_2cfc2716[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot change code mapping - remove referrer first'
    else:
        if sub_2cfc2716[address(arg2)]:
            if addressOf[arg1] != address(arg2):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot change code mapping - remove referrer first'
            if arg1 != sub_2cfc2716[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot change code mapping - remove referrer first'
        else:
            if sub_62d03cb7 == -1:
                revert with 0, 17
            sub_62d03cb7++
    if stor5[address(arg2)] != 0:
        stor5[address(arg2)] = 0
    addressOf[arg1] = address(arg2)
    sub_2cfc2716[address(arg2)] = arg1
}



}
