contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_a81ead9b;
uint8 stor2; offset 160
address sub_647aba30Address;

function isFailsafeActive() payable {
    return bool(stor2)
}

function sub_647aba30(?) payable {
    return sub_647aba30Address
}

function owner() payable {
    return owner
}

function sub_a81ead9b(?) payable {
    require calldata.size - 4 >= 32
    return sub_a81ead9b[arg1]
}

function sub_b1a6e713(?) payable {
    return bool(stor2)
}

function _fallback() payable {
    revert
}

function reenableKeywords() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = 0
}

function enableFailsafeMode() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_6861ab9c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[0] = idx + cd[36]
        mem[32] = 1
        sub_a81ead9b[idx + cd[36]] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function sub_ae4e0fcc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if sub_647aba30Address != msg.sender:
        revert with 0, 'Only callable by cartographer'
    if stor2:
        mem[ceil32(arg1.length) + 128] = bool(stor2)
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    if not sub_a81ead9b[arg2]:
        mem[ceil32(arg1.length) + 128] = not bool(sub_a81ead9b[arg2])
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 224] = arg1.length
    mem[ceil32(arg1.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + arg1.length + 256] = 0
    mem[ceil32(arg1.length) + 192] = arg2
    mem[ceil32(arg1.length) + 128] = ceil32(arg1.length) + 96
    mem[(2 * ceil32(arg1.length)) + 256] = sub_a81ead9b[arg2] == sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    return memory
      from (2 * ceil32(arg1.length)) + 256
       len ceil32(arg1.length) + 32
}



}
