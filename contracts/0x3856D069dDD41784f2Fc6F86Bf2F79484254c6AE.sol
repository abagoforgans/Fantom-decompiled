contract main {




// =====================  Runtime code  =====================


#
#  - buyMint()
#
const nextPrice = 10^17


address owner;
array of struct stor3;
uint8 stor5;
address stor5; offset 8

function owner() {
    return owner
}

function sub_c7126596(?) {
    return stor3.length
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeOwner2(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor5.field_8)
    address(stor5.field_8) = arg1
}

function setMintable(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor5.field_0) = uint8(arg1)
}

function sub_4cd68e33(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) / 2 wei
         gas gas_remaining wei
    call address(stor5.field_8) with:
       value eth.balance(this.address) / 2 wei
         gas gas_remaining wei
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f92bfd58(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] <= test266151307()
        require calldata.size > cd[4] + cd[s] + 67
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _18 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_18] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_18 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_18 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _18
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        stor3.length++
        mem[0] = 3
        _34 = mem[mem[(32 * idx) + 128]]
        if bool(stor3[stor3.length].field_0):
            if bool(stor3[stor3.length].field_0) == uint255(stor3[stor3.length].field_0) * 0.5 < 32:
                revert with 0, 34
            mem[0] = stor3.length + sha3(3)
            if not _34:
                stor3[stor3.length].field_0 = 0
                s = sha3(stor3.length + sha3(3))
                while sha3(stor3.length + sha3(3)) + ((uint255(stor3[stor3.length].field_0) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                stor3[stor3.length].field_0 = (2 * _34) + 1
                s = sha3(stor3.length + sha3(3))
                t = mem[(32 * idx) + 128] + 32
                while mem[(32 * idx) + 128] + _34 + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                t = s
                while sha3(stor3.length + sha3(3)) + ((uint255(stor3[stor3.length].field_0) * 0.5) + 31 / 32) > t:
                    stor[t] = 0
                    t = t + 1
                    continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if bool(stor3[stor3.length].field_0) == stor3[stor3.length].field_1 % 128 < 32:
            revert with 0, 34
        mem[0] = stor3.length + sha3(3)
        if not _34:
            stor3[stor3.length].field_0 = 0
            s = sha3(stor3.length + sha3(3))
            while sha3(stor3.length + sha3(3)) + (stor3[stor3.length].field_1 % 128 + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        stor3[stor3.length].field_0 = (2 * _34) + 1
        s = sha3(stor3.length + sha3(3))
        t = mem[(32 * idx) + 128] + 32
        while mem[(32 * idx) + 128] + _34 + 32 > t:
            stor[s] = mem[t]
            s = s + 1
            t = t + 32
            continue 
        t = s
        while sha3(stor3.length + sha3(3)) + (stor3[stor3.length].field_1 % 128 + 31 / 32) > t:
            stor[t] = 0
            t = t + 1
            continue 
        if sha3(stor3.length + sha3(3)) + (stor3[stor3.length].field_1 % 128 + 31 / 32) == -1:
            revert with 0, 17
        t = sha3(stor3.length + sha3(3)) + (stor3[stor3.length].field_1 % 128 + 31 / 32) + 1
        continue 
}



}
