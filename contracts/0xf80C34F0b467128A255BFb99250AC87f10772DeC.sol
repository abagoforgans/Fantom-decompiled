contract main {




// =====================  Runtime code  =====================


#
#  - sub_1102965c(?)
#  - sub_5d9cfa20(?)
#  - relayAndVerify(bytes arg1)
#  - sub_eb930522(?)
#
address owner;
mapping of uint256 sub_c5f556f0;
mapping of uint256 validatorPowers;
uint256 totalValidatorPower;
array of struct stor4;

function owner() payable {
    return owner
}

function sub_c5f556f0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_c5f556f0[arg1]
}

function validatorPowers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return validatorPowers[arg1]
}

function totalValidatorPower() payable {
    return totalValidatorPower
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
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

function sub_7c66ec80(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128] = stor4[arg1].field_0
    idx = 128
    s = 0
    while stor4[arg1].length + 96 > idx:
        mem[idx + 32] = stor4[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor4[arg1].length) + 160] = stor4[arg1][3].field_0
    idx = ceil32(stor4[arg1].length) + 160
    s = 0
    while ceil32(stor4[arg1].length) + stor4[arg1][3].length + 128 > idx:
        mem[idx + 32] = stor4[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor4[arg1].length) > stor4[arg1].length:
        mem[ceil32(stor4[arg1].length) + ceil32(stor4[arg1][3].length) + stor4[arg1].length + 416] = 0
    mem[(2 * ceil32(stor4[arg1].length)) + ceil32(stor4[arg1][3].length) + 416] = stor4[arg1][3].length
    return Array(len=stor4[arg1].length, data=mem[128 len ceil32(stor4[arg1].length)], stor4[arg1][3].length, mem[ceil32(stor4[arg1].length) + 160 len ceil32(stor4[arg1][3].length)]), 
           uint64(stor4[arg1].field_256),
           uint64(stor4[arg1].field_256),
           uint64(stor4[arg1].field_256),
           uint64(stor4[arg1].field_256),
           uint8(stor4[arg1].field_512),
           ceil32(stor4[arg1].length) + 256
}

function sub_91a68723(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 64
        _23 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_23] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_23 + 32] = cd[(s + 32)]
        mem[t] = _23
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _44 = mem[96]
    s = 0
    while ('cd', 4).length < _44:
        _45 = mem[64]
        mem[64] = mem[64] + 64
        mem[_45] = 0
        mem[_45 + 32] = 0
        require ('cd', 4).length < mem[96]
        _47 = mem[(32 * ('cd', 4).length) + 128]
        mem[0] = mem[mem[(32 * ('cd', 4).length) + 128] + 12 len 20]
        mem[32] = 2
        _49 = sha3(mem[0], 2)
        _50 = mem[64]
        mem[64] = mem[64] + 64
        mem[_50] = 30
        mem[_50 + 32] = 'SafeMath: subtraction overflow'
        if stor[_49] > totalValidatorPower:
            _51 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_51 + idx + 68] = mem[_50 + idx + 32]
                _44 = mem[96]
                idx = idx + 32
                continue 
            mem[_51 + 98] = 0
            revert with memory
              from mem[64]
               len _51 + -mem[64] + 100
        totalValidatorPower -= stor[_49]
        _52 = mem[_47 + 32]
        mem[0] = mem[_47 + 12 len 20]
        mem[32] = 2
        validatorPowers[mem[0]] = _52
        if totalValidatorPower + mem[_47 + 32] < totalValidatorPower:
            revert with 0, 'SafeMath: addition overflow'
        totalValidatorPower += mem[_47 + 32]
        _44 = mem[96]
        s = ('cd', 4).length + 1
        continue 
}

function sub_d4a73c7c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 160
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4).length + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 288 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 288 >= 256
    require cd[4] + ('cd', 4).length + cd[(cd[4] + ('cd', 4).length + 4)] + 36 <= calldata.size
    mem[288 len cd[(cd[4] + ('cd', 4).length + 4)]] = call.data[cd[4] + ('cd', 4).length + 36 len cd[(cd[4] + ('cd', 4).length + 4)]]
    mem[cd[(cd[4] + ('cd', 4).length + 4)] + 288] = 0
    mem[96] = 256
    require ('cd', 4)[0] == uint64(('cd', 4)[0])
    mem[128] = ('cd', 4)[0]
    require ('cd', 4)[1] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320 >= 288
    mem[64] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 288] = cd[(cd[4] + ('cd', 4)[1] + 4)]
    require cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 320 len cd[(cd[4] + ('cd', 4)[1] + 4)]] = call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]]
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 320] = 0
    require ('cd', 4)[2] == uint64(('cd', 4)[2])
    require ('cd', 4)[3] == uint64(('cd', 4)[3])
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352] = 32
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 384] = 160
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 544] = cd[(cd[4] + ('cd', 4).length + 4)]
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 576 len ceil32(cd[(cd[4] + ('cd', 4).length + 4)])] = call.data[cd[4] + ('cd', 4).length + 36 len cd[(cd[4] + ('cd', 4).length + 4)]], mem[cd[(cd[4] + ('cd', 4).length + 4)] + 288 len ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) - cd[(cd[4] + ('cd', 4).length + 4)]]
    if ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) > cd[(cd[4] + ('cd', 4).length + 4)]:
        mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 576] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 416] = uint64(('cd', 4)[0])
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 448] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 192
    mem[(2 * ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 576] = Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]
    mem[(2 * ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 608 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])])] = mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 320 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])])]
    if ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]) <= Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]:
        mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 480] = uint64(('cd', 4)[2])
        mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 512] = uint64(('cd', 4)[3])
        mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]) + 256
        mem[(2 * ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]) + 608] = sha3(mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]])
        return memory
          from (2 * ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]) + 608
           len 32
    mem[(2 * ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])] + 608] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 480] = uint64(('cd', 4)[2])
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 512] = uint64(('cd', 4)[3])
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]) + 256
    mem[(2 * ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]) + 608] = sha3(mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]])
    return Mask(8 * -ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]) + Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])] + 32, 0, 0), 
           mem[(2 * ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])] + 640 len -Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])] + ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])])]
}

function sub_8f0d6f17(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[96] = 96
    mem[128] = 0
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    mem[256] = 96
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 96
    mem[480] = 0xad37373200000000000000000000000000000000000000000000000000000000
    mem[484] = 32
    mem[516] = arg1.length
    mem[548 len arg1.length] = arg1[all]
    mem[arg1.length + 548] = 0
    require ext_code.size(this.address)
    call this.address.0xad373732 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    _6 = mem[480 len 4], 0
    require mem[480 len 4], 0 <= test266151307()
    require return_data.size - mem[480 len 4], 0 >= 160
    require bool(ceil32(return_data.size) + 640 <= test266151307())
    mem[64] = ceil32(return_data.size) + 640
    _8 = mem[mem[480 len 4], 0 + 480]
    require mem[mem[480 len 4], 0 + 480] <= test266151307()
    require mem[480 len 4], 0 + mem[mem[480 len 4], 0 + 480] + 511 < return_data.size + 480
    _9 = mem[mem[480 len 4], 0 + mem[mem[480 len 4], 0 + 480] + 480]
    require mem[mem[480 len 4], 0 + mem[mem[480 len 4], 0 + 480] + 480] <= test266151307()
    require ceil32(return_data.size) + ceil32(mem[mem[480 len 4], 0 + mem[mem[480 len 4], 0 + 480] + 480]) + 672 <= test266151307() and ceil32(mem[mem[480 len 4], 0 + mem[mem[480 len 4], 0 + 480] + 480]) + 192 >= 160
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[480 len 4], 0 + mem[mem[480 len 4], 0 + 480] + 480]) + 672
    mem[ceil32(return_data.size) + 640] = _9
    require mem[480 len 4], 0 + _8 + _9 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 672 len ceil32(_9)] = mem[mem[480 len 4], 0 + _8 + 512 len ceil32(_9)]
    if ceil32(_9) <= _9:
        mem[ceil32(return_data.size) + 480] = ceil32(return_data.size) + 640
        require mem[_6 + 512] == mem[_6 + 536 len 8]
        mem[ceil32(return_data.size) + 512] = mem[_6 + 512]
        _363 = mem[_6 + 544]
        require mem[_6 + 544] <= test266151307()
        require _6 + mem[_6 + 544] + 511 < return_data.size + 480
        _365 = mem[_6 + mem[_6 + 544] + 480]
        require mem[_6 + mem[_6 + 544] + 480] <= test266151307()
        _367 = mem[64]
        require mem[64] + ceil32(mem[_6 + mem[_6 + 544] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6 + mem[_6 + 544] + 480]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 544] + 480]) + 32
        mem[_367] = mem[_6 + mem[_6 + 544] + 480]
        require _6 + _363 + _365 + 32 <= return_data.size
        mem[_367 + 32 len ceil32(_365)] = mem[_6 + _363 + 512 len ceil32(_365)]
        if ceil32(_365) <= _365:
            mem[ceil32(return_data.size) + 544] = _367
            require mem[_6 + 576] == mem[_6 + 600 len 8]
            mem[ceil32(return_data.size) + 576] = mem[_6 + 576]
            require mem[_6 + 608] == mem[_6 + 632 len 8]
            mem[ceil32(return_data.size) + 608] = mem[_6 + 608]
            require 32, Mask(224, 32, arg1.length) >> 32 <= test266151307()
            require return_data.size - 32, Mask(224, 32, arg1.length) >> 32 >= 224
            _3753 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            _3757 = mem[32, Mask(224, 32, arg1.length) >> 32 + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + 480] <= test266151307()
            require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 511 < return_data.size + 480
            _3761 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480] <= test266151307()
            _3765 = mem[64]
            require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 >= mem[64]
            mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32
            mem[_3765] = _3761
            require 32, Mask(224, 32, arg1.length) >> 32 + _3757 + _3761 + 32 <= return_data.size
            mem[_3765 + 32 len ceil32(_3761)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _3757 + 512 len ceil32(_3761)]
            if ceil32(_3761) <= _3761:
                mem[_3753] = _3765
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3753 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3753 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3753 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3753 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3753 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7153 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7161 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7169 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7169] = _7161
                require 32, Mask(224, 32, arg1.length) >> 32 + _7153 + _7161 + 32 <= return_data.size
                mem[_7169 + 32 len ceil32(_7161)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7153 + 512 len ceil32(_7161)]
                if ceil32(_7161) <= _7161:
                    mem[_3753 + 192] = _7169
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13801 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13801)] = mem[_367 + 32 len ceil32(_13801)]
                        if ceil32(_13801) <= _13801:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17097 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13801) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13801) + 288
                            _17099 = sha3(mem[_17097 + 32 len mem[_17097]])
                            mem[0] = sha3(mem[_17097 + 32 len mem[_17097]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17099][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17099].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17099].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17099].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17099].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17099].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17099][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
                        else:
                            mem[mem[64] + ceil32(_9) + _13801 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17195 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13801) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13801) + 288
                            _17197 = sha3(mem[_17195 + 32 len mem[_17195]])
                            mem[0] = sha3(mem[_17195 + 32 len mem[_17195]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17197][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17197].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17197].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17197].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17197].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17197].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17197][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13817 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13817)] = mem[_367 + 32 len ceil32(_13817)]
                        if ceil32(_13817) <= _13817:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17100 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13817) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13817) + 288
                            _17102 = sha3(mem[_17100 + 32 len mem[_17100]])
                            mem[0] = sha3(mem[_17100 + 32 len mem[_17100]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17102][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17102].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17102].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17102].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17102].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17102].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17102][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
                        else:
                            mem[mem[64] + ceil32(_9) + _13817 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17200 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13817) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13817) + 288
                            _17202 = sha3(mem[_17200 + 32 len mem[_17200]])
                            mem[0] = sha3(mem[_17200 + 32 len mem[_17200]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17202][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17202].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17202].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17202].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17202].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17202].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17202][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
                else:
                    mem[_7169 + _7161 + 32] = 0
                    mem[_3753 + 192] = _7169
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13802 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13802)] = mem[_367 + 32 len ceil32(_13802)]
                        if ceil32(_13802) <= _13802:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17103 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13802) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13802) + 288
                            _17105 = sha3(mem[_17103 + 32 len mem[_17103]])
                            mem[0] = sha3(mem[_17103 + 32 len mem[_17103]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17105][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17105].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17105].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17105].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17105].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17105].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17105][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
                        else:
                            mem[mem[64] + ceil32(_9) + _13802 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17205 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13802) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13802) + 288
                            _17207 = sha3(mem[_17205 + 32 len mem[_17205]])
                            mem[0] = sha3(mem[_17205 + 32 len mem[_17205]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17207][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17207].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17207].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17207].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17207].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17207].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17207][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13818 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13818)] = mem[_367 + 32 len ceil32(_13818)]
                        if ceil32(_13818) <= _13818:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17106 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13818) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13818) + 288
                            _17108 = sha3(mem[_17106 + 32 len mem[_17106]])
                            mem[0] = sha3(mem[_17106 + 32 len mem[_17106]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17108][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17108].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17108].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17108].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17108].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17108].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17108][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
                        else:
                            mem[mem[64] + ceil32(_9) + _13818 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17210 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13818) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13818) + 288
                            _17212 = sha3(mem[_17210 + 32 len mem[_17210]])
                            mem[0] = sha3(mem[_17210 + 32 len mem[_17210]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17212][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17212].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17212].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17212].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17212].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17212].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17212][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
            else:
                mem[_3765 + _3761 + 32] = 0
                mem[_3753] = _3765
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3753 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3753 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3753 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3753 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3753 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7157 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7165 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7173 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7173] = _7165
                require 32, Mask(224, 32, arg1.length) >> 32 + _7157 + _7165 + 32 <= return_data.size
                mem[_7173 + 32 len ceil32(_7165)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7157 + 512 len ceil32(_7165)]
                if ceil32(_7165) <= _7165:
                    mem[_3753 + 192] = _7173
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13803 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13803)] = mem[_367 + 32 len ceil32(_13803)]
                        if ceil32(_13803) <= _13803:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17109 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13803) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13803) + 288
                            _17111 = sha3(mem[_17109 + 32 len mem[_17109]])
                            mem[0] = sha3(mem[_17109 + 32 len mem[_17109]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17111][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17111].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17111].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17111].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17111].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17111].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17111][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
                        else:
                            mem[mem[64] + ceil32(_9) + _13803 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17215 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13803) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13803) + 288
                            _17217 = sha3(mem[_17215 + 32 len mem[_17215]])
                            mem[0] = sha3(mem[_17215 + 32 len mem[_17215]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17217][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17217].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17217].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17217].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17217].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17217].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17217][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13819 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13819)] = mem[_367 + 32 len ceil32(_13819)]
                        if ceil32(_13819) <= _13819:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17112 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13819) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13819) + 288
                            _17114 = sha3(mem[_17112 + 32 len mem[_17112]])
                            mem[0] = sha3(mem[_17112 + 32 len mem[_17112]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17114][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17114].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17114].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17114].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17114].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17114].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17114][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
                        else:
                            mem[mem[64] + ceil32(_9) + _13819 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17220 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13819) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13819) + 288
                            _17222 = sha3(mem[_17220 + 32 len mem[_17220]])
                            mem[0] = sha3(mem[_17220 + 32 len mem[_17220]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17222][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17222].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17222].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17222].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17222].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17222].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17222][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
                else:
                    mem[_7173 + _7165 + 32] = 0
                    mem[_3753 + 192] = _7173
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13804 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13804)] = mem[_367 + 32 len ceil32(_13804)]
                        if ceil32(_13804) <= _13804:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17115 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13804) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13804) + 288
                            _17117 = sha3(mem[_17115 + 32 len mem[_17115]])
                            mem[0] = sha3(mem[_17115 + 32 len mem[_17115]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17117][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17117].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17117].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17117].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17117].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17117].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17117][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
                        else:
                            mem[mem[64] + ceil32(_9) + _13804 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17225 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13804) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13804) + 288
                            _17227 = sha3(mem[_17225 + 32 len mem[_17225]])
                            mem[0] = sha3(mem[_17225 + 32 len mem[_17225]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17227][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17227].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17227].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17227].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17227].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17227].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17227][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13820 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13820)] = mem[_367 + 32 len ceil32(_13820)]
                        if ceil32(_13820) <= _13820:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17118 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13820) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13820) + 288
                            _17120 = sha3(mem[_17118 + 32 len mem[_17118]])
                            mem[0] = sha3(mem[_17118 + 32 len mem[_17118]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17120][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17120].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17120].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17120].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17120].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17120].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17120][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
                        else:
                            mem[mem[64] + ceil32(_9) + _13820 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17230 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13820) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13820) + 288
                            _17232 = sha3(mem[_17230 + 32 len mem[_17230]])
                            mem[0] = sha3(mem[_17230 + 32 len mem[_17230]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17232][].field_0 = Array(len=_3761, data=mem[_3765 + 32 len _3761])
                            uint64(stor4[_17232].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17232].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17232].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17232].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17232].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17232][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
        else:
            mem[_367 + _365 + 32] = 0
            mem[ceil32(return_data.size) + 544] = _367
            require mem[_6 + 576] == mem[_6 + 600 len 8]
            mem[ceil32(return_data.size) + 576] = mem[_6 + 576]
            require mem[_6 + 608] == mem[_6 + 632 len 8]
            mem[ceil32(return_data.size) + 608] = mem[_6 + 608]
            require 32, Mask(224, 32, arg1.length) >> 32 <= test266151307()
            require return_data.size - 32, Mask(224, 32, arg1.length) >> 32 >= 224
            _3755 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            _3759 = mem[32, Mask(224, 32, arg1.length) >> 32 + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + 480] <= test266151307()
            require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 511 < return_data.size + 480
            _3763 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480] <= test266151307()
            _3767 = mem[64]
            require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 >= mem[64]
            mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32
            mem[_3767] = _3763
            require 32, Mask(224, 32, arg1.length) >> 32 + _3759 + _3763 + 32 <= return_data.size
            mem[_3767 + 32 len ceil32(_3763)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _3759 + 512 len ceil32(_3763)]
            if ceil32(_3763) <= _3763:
                mem[_3755] = _3767
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3755 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3755 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3755 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3755 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3755 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7154 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7162 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7170 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7170] = _7162
                require 32, Mask(224, 32, arg1.length) >> 32 + _7154 + _7162 + 32 <= return_data.size
                mem[_7170 + 32 len ceil32(_7162)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7154 + 512 len ceil32(_7162)]
                if ceil32(_7162) <= _7162:
                    mem[_3755 + 192] = _7170
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13805 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13805)] = mem[_367 + 32 len ceil32(_13805)]
                        if ceil32(_13805) <= _13805:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17121 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13805) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13805) + 288
                            _17123 = sha3(mem[_17121 + 32 len mem[_17121]])
                            mem[0] = sha3(mem[_17121 + 32 len mem[_17121]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17123][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17123].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17123].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17123].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17123].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17123].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17123][3][].field_0 = Array(len=_7162, data=mem[_7170 + 32 len _7162])
                        else:
                            mem[mem[64] + ceil32(_9) + _13805 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17235 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13805) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13805) + 288
                            _17237 = sha3(mem[_17235 + 32 len mem[_17235]])
                            mem[0] = sha3(mem[_17235 + 32 len mem[_17235]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17237][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17237].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17237].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17237].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17237].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17237].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17237][3][].field_0 = Array(len=_7162, data=mem[_7170 + 32 len _7162])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13821 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13821)] = mem[_367 + 32 len ceil32(_13821)]
                        if ceil32(_13821) <= _13821:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17124 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13821) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13821) + 288
                            _17126 = sha3(mem[_17124 + 32 len mem[_17124]])
                            mem[0] = sha3(mem[_17124 + 32 len mem[_17124]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17126][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17126].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17126].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17126].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17126].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17126].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17126][3][].field_0 = Array(len=_7162, data=mem[_7170 + 32 len _7162])
                        else:
                            mem[mem[64] + ceil32(_9) + _13821 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17240 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13821) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13821) + 288
                            _17242 = sha3(mem[_17240 + 32 len mem[_17240]])
                            mem[0] = sha3(mem[_17240 + 32 len mem[_17240]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17242][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17242].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17242].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17242].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17242].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17242].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17242][3][].field_0 = Array(len=_7162, data=mem[_7170 + 32 len _7162])
                else:
                    mem[_7170 + _7162 + 32] = 0
                    mem[_3755 + 192] = _7170
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13806 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13806)] = mem[_367 + 32 len ceil32(_13806)]
                        if ceil32(_13806) <= _13806:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17127 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13806) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13806) + 288
                            _17129 = sha3(mem[_17127 + 32 len mem[_17127]])
                            mem[0] = sha3(mem[_17127 + 32 len mem[_17127]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17129][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17129].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17129].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17129].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17129].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17129].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17129][3][].field_0 = Array(len=_7162, data=mem[_7170 + 32 len _7162])
                        else:
                            mem[mem[64] + ceil32(_9) + _13806 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17245 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13806) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13806) + 288
                            _17247 = sha3(mem[_17245 + 32 len mem[_17245]])
                            mem[0] = sha3(mem[_17245 + 32 len mem[_17245]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17247][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17247].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17247].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17247].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17247].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17247].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17247][3][].field_0 = Array(len=_7162, data=mem[_7170 + 32 len _7162])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13822 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13822)] = mem[_367 + 32 len ceil32(_13822)]
                        if ceil32(_13822) <= _13822:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17130 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13822) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13822) + 288
                            _17132 = sha3(mem[_17130 + 32 len mem[_17130]])
                            mem[0] = sha3(mem[_17130 + 32 len mem[_17130]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17132][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17132].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17132].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17132].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17132].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17132].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17132][3][].field_0 = Array(len=_7162, data=mem[_7170 + 32 len _7162])
                        else:
                            mem[mem[64] + ceil32(_9) + _13822 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17250 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13822) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13822) + 288
                            _17252 = sha3(mem[_17250 + 32 len mem[_17250]])
                            mem[0] = sha3(mem[_17250 + 32 len mem[_17250]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17252][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17252].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17252].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17252].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17252].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17252].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17252][3][].field_0 = Array(len=_7162, data=mem[_7170 + 32 len _7162])
            else:
                mem[_3767 + _3763 + 32] = 0
                mem[_3755] = _3767
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3755 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3755 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3755 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3755 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3755 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7158 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7166 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7174 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7174] = _7166
                require 32, Mask(224, 32, arg1.length) >> 32 + _7158 + _7166 + 32 <= return_data.size
                mem[_7174 + 32 len ceil32(_7166)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7158 + 512 len ceil32(_7166)]
                if ceil32(_7166) <= _7166:
                    mem[_3755 + 192] = _7174
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13807 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13807)] = mem[_367 + 32 len ceil32(_13807)]
                        if ceil32(_13807) <= _13807:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17133 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13807) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13807) + 288
                            _17135 = sha3(mem[_17133 + 32 len mem[_17133]])
                            mem[0] = sha3(mem[_17133 + 32 len mem[_17133]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17135][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17135].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17135].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17135].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17135].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17135].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17135][3][].field_0 = Array(len=_7166, data=mem[_7174 + 32 len _7166])
                        else:
                            mem[mem[64] + ceil32(_9) + _13807 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17255 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13807) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13807) + 288
                            _17257 = sha3(mem[_17255 + 32 len mem[_17255]])
                            mem[0] = sha3(mem[_17255 + 32 len mem[_17255]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17257][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17257].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17257].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17257].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17257].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17257].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17257][3][].field_0 = Array(len=_7166, data=mem[_7174 + 32 len _7166])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13823 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13823)] = mem[_367 + 32 len ceil32(_13823)]
                        if ceil32(_13823) <= _13823:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17136 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13823) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13823) + 288
                            _17138 = sha3(mem[_17136 + 32 len mem[_17136]])
                            mem[0] = sha3(mem[_17136 + 32 len mem[_17136]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17138][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17138].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17138].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17138].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17138].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17138].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17138][3][].field_0 = Array(len=_7166, data=mem[_7174 + 32 len _7166])
                        else:
                            mem[mem[64] + ceil32(_9) + _13823 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17260 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13823) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13823) + 288
                            _17262 = sha3(mem[_17260 + 32 len mem[_17260]])
                            mem[0] = sha3(mem[_17260 + 32 len mem[_17260]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17262][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17262].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17262].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17262].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17262].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17262].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17262][3][].field_0 = Array(len=_7166, data=mem[_7174 + 32 len _7166])
                else:
                    mem[_7174 + _7166 + 32] = 0
                    mem[_3755 + 192] = _7174
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13808 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13808)] = mem[_367 + 32 len ceil32(_13808)]
                        if ceil32(_13808) <= _13808:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17139 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13808) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13808) + 288
                            _17141 = sha3(mem[_17139 + 32 len mem[_17139]])
                            mem[0] = sha3(mem[_17139 + 32 len mem[_17139]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17141][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17141].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17141].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17141].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17141].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17141].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17141][3][].field_0 = Array(len=_7166, data=mem[_7174 + 32 len _7166])
                        else:
                            mem[mem[64] + ceil32(_9) + _13808 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17265 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13808) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13808) + 288
                            _17267 = sha3(mem[_17265 + 32 len mem[_17265]])
                            mem[0] = sha3(mem[_17265 + 32 len mem[_17265]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17267][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17267].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17267].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17267].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17267].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17267].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17267][3][].field_0 = Array(len=_7166, data=mem[_7174 + 32 len _7166])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13824 = mem[_367]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13824)] = mem[_367 + 32 len ceil32(_13824)]
                        if ceil32(_13824) <= _13824:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17142 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13824) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13824) + 288
                            _17144 = sha3(mem[_17142 + 32 len mem[_17142]])
                            mem[0] = sha3(mem[_17142 + 32 len mem[_17142]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17144][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17144].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17144].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17144].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17144].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17144].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17144][3][].field_0 = Array(len=_7166, data=mem[_7174 + 32 len _7166])
                        else:
                            mem[mem[64] + ceil32(_9) + _13824 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17270 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13824) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13824) + 288
                            _17272 = sha3(mem[_17270 + 32 len mem[_17270]])
                            mem[0] = sha3(mem[_17270 + 32 len mem[_17270]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            stor4[_17272][].field_0 = Array(len=_3763, data=mem[_3767 + 32 len _3763])
                            uint64(stor4[_17272].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17272].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17272].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17272].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17272].field_512) = mem[_3755 + 191 len 1]
                            stor4[_17272][3][].field_0 = Array(len=_7166, data=mem[_7174 + 32 len _7166])
    else:
        mem[ceil32(return_data.size) + _9 + 672] = 0
        mem[ceil32(return_data.size) + 480] = ceil32(return_data.size) + 640
        require mem[_6 + 512] == mem[_6 + 536 len 8]
        mem[ceil32(return_data.size) + 512] = mem[_6 + 512]
        _364 = mem[_6 + 544]
        require mem[_6 + 544] <= test266151307()
        require _6 + mem[_6 + 544] + 511 < return_data.size + 480
        _366 = mem[_6 + mem[_6 + 544] + 480]
        require mem[_6 + mem[_6 + 544] + 480] <= test266151307()
        _368 = mem[64]
        require mem[64] + ceil32(mem[_6 + mem[_6 + 544] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6 + mem[_6 + 544] + 480]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 544] + 480]) + 32
        mem[_368] = mem[_6 + mem[_6 + 544] + 480]
        require _6 + _364 + _366 + 32 <= return_data.size
        mem[_368 + 32 len ceil32(_366)] = mem[_6 + _364 + 512 len ceil32(_366)]
        if ceil32(_366) <= _366:
            mem[ceil32(return_data.size) + 544] = _368
            require mem[_6 + 576] == mem[_6 + 600 len 8]
            mem[ceil32(return_data.size) + 576] = mem[_6 + 576]
            require mem[_6 + 608] == mem[_6 + 632 len 8]
            mem[ceil32(return_data.size) + 608] = mem[_6 + 608]
            require 32, Mask(224, 32, arg1.length) >> 32 <= test266151307()
            require return_data.size - 32, Mask(224, 32, arg1.length) >> 32 >= 224
            _3754 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            _3758 = mem[32, Mask(224, 32, arg1.length) >> 32 + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + 480] <= test266151307()
            require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 511 < return_data.size + 480
            _3762 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480] <= test266151307()
            _3766 = mem[64]
            require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 >= mem[64]
            mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32
            mem[_3766] = _3762
            require 32, Mask(224, 32, arg1.length) >> 32 + _3758 + _3762 + 32 <= return_data.size
            mem[_3766 + 32 len ceil32(_3762)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _3758 + 512 len ceil32(_3762)]
            if ceil32(_3762) <= _3762:
                mem[_3754] = _3766
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3754 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3754 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3754 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3754 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3754 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7155 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7163 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7171 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7171] = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require 32, Mask(224, 32, arg1.length) >> 32 + _7155 + _7163 + 32 <= return_data.size
                mem[_7171 + 32 len ceil32(_7163)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7155 + 512 len ceil32(_7163)]
                if ceil32(_7163) <= _7163:
                    mem[_3754 + 192] = _7171
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13809 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13809)] = mem[_368 + 32 len ceil32(_13809)]
                        if ceil32(_13809) <= _13809:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17145 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13809) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13809) + 288
                            _17147 = sha3(mem[_17145 + 32 len mem[_17145]])
                            mem[0] = sha3(mem[_17145 + 32 len mem[_17145]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17147, 4)
                            stor4[_17147][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17147].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17147].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17147].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17147].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17147].field_512) = mem[_3754 + 191 len 1]
                            _22383 = mem[_7171]
                            stor4[_17147][3][].field_0 = Array(len=_22383, data=mem[_7171 + 32 len _22383])
                        else:
                            mem[mem[64] + ceil32(_9) + _13809 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17275 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13809) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13809) + 288
                            _17277 = sha3(mem[_17275 + 32 len mem[_17275]])
                            mem[0] = sha3(mem[_17275 + 32 len mem[_17275]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17277, 4)
                            stor4[_17277][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17277].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17277].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17277].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17277].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17277].field_512) = mem[_3754 + 191 len 1]
                            _22390 = mem[_7171]
                            stor4[_17277][3][].field_0 = Array(len=_22390, data=mem[_7171 + 32 len _22390])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13825 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13825)] = mem[_368 + 32 len ceil32(_13825)]
                        if ceil32(_13825) <= _13825:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17148 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13825) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13825) + 288
                            _17150 = sha3(mem[_17148 + 32 len mem[_17148]])
                            mem[0] = sha3(mem[_17148 + 32 len mem[_17148]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17150, 4)
                            stor4[_17150][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17150].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17150].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17150].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17150].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17150].field_512) = mem[_3754 + 191 len 1]
                            _22397 = mem[_7171]
                            stor4[_17150][3][].field_0 = Array(len=_22397, data=mem[_7171 + 32 len _22397])
                        else:
                            mem[mem[64] + ceil32(_9) + _13825 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17280 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13825) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13825) + 288
                            _17282 = sha3(mem[_17280 + 32 len mem[_17280]])
                            mem[0] = sha3(mem[_17280 + 32 len mem[_17280]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17282, 4)
                            stor4[_17282][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17282].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17282].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17282].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17282].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17282].field_512) = mem[_3754 + 191 len 1]
                            _22404 = mem[_7171]
                            stor4[_17282][3][].field_0 = Array(len=_22404, data=mem[_7171 + 32 len _22404])
                else:
                    mem[_7171 + _7163 + 32] = 0
                    mem[_3754 + 192] = _7171
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13810 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13810)] = mem[_368 + 32 len ceil32(_13810)]
                        if ceil32(_13810) <= _13810:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17151 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13810) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13810) + 288
                            _17153 = sha3(mem[_17151 + 32 len mem[_17151]])
                            mem[0] = sha3(mem[_17151 + 32 len mem[_17151]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17153, 4)
                            stor4[_17153][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17153].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17153].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17153].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17153].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17153].field_512) = mem[_3754 + 191 len 1]
                            _22411 = mem[_7171]
                            stor4[_17153][3][].field_0 = Array(len=_22411, data=mem[_7171 + 32 len _22411])
                        else:
                            mem[mem[64] + ceil32(_9) + _13810 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17285 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13810) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13810) + 288
                            _17287 = sha3(mem[_17285 + 32 len mem[_17285]])
                            mem[0] = sha3(mem[_17285 + 32 len mem[_17285]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17287, 4)
                            stor4[_17287][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17287].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17287].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17287].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17287].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17287].field_512) = mem[_3754 + 191 len 1]
                            _22418 = mem[_7171]
                            stor4[_17287][3][].field_0 = Array(len=_22418, data=mem[_7171 + 32 len _22418])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13826 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13826)] = mem[_368 + 32 len ceil32(_13826)]
                        if ceil32(_13826) <= _13826:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17154 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13826) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13826) + 288
                            _17156 = sha3(mem[_17154 + 32 len mem[_17154]])
                            mem[0] = sha3(mem[_17154 + 32 len mem[_17154]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17156, 4)
                            stor4[_17156][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17156].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17156].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17156].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17156].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17156].field_512) = mem[_3754 + 191 len 1]
                            _22425 = mem[_7171]
                            stor4[_17156][3][].field_0 = Array(len=_22425, data=mem[_7171 + 32 len _22425])
                        else:
                            mem[mem[64] + ceil32(_9) + _13826 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17290 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13826) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13826) + 288
                            _17292 = sha3(mem[_17290 + 32 len mem[_17290]])
                            mem[0] = sha3(mem[_17290 + 32 len mem[_17290]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17292, 4)
                            stor4[_17292][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17292].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17292].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17292].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17292].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17292].field_512) = mem[_3754 + 191 len 1]
                            _22432 = mem[_7171]
                            stor4[_17292][3][].field_0 = Array(len=_22432, data=mem[_7171 + 32 len _22432])
            else:
                mem[_3766 + _3762 + 32] = 0
                mem[_3754] = _3766
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3754 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3754 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3754 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3754 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3754 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7159 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7167 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7175 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7175] = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require 32, Mask(224, 32, arg1.length) >> 32 + _7159 + _7167 + 32 <= return_data.size
                mem[_7175 + 32 len ceil32(_7167)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7159 + 512 len ceil32(_7167)]
                if ceil32(_7167) <= _7167:
                    mem[_3754 + 192] = _7175
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13811 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13811)] = mem[_368 + 32 len ceil32(_13811)]
                        if ceil32(_13811) <= _13811:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17157 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13811) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13811) + 288
                            _17159 = sha3(mem[_17157 + 32 len mem[_17157]])
                            mem[0] = sha3(mem[_17157 + 32 len mem[_17157]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17159, 4)
                            stor4[_17159][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17159].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17159].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17159].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17159].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17159].field_512) = mem[_3754 + 191 len 1]
                            _22439 = mem[_7175]
                            stor4[_17159][3][].field_0 = Array(len=_22439, data=mem[_7175 + 32 len _22439])
                        else:
                            mem[mem[64] + ceil32(_9) + _13811 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17295 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13811) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13811) + 288
                            _17297 = sha3(mem[_17295 + 32 len mem[_17295]])
                            mem[0] = sha3(mem[_17295 + 32 len mem[_17295]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17297, 4)
                            stor4[_17297][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17297].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17297].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17297].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17297].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17297].field_512) = mem[_3754 + 191 len 1]
                            _22446 = mem[_7175]
                            stor4[_17297][3][].field_0 = Array(len=_22446, data=mem[_7175 + 32 len _22446])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13827 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13827)] = mem[_368 + 32 len ceil32(_13827)]
                        if ceil32(_13827) <= _13827:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17160 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13827) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13827) + 288
                            _17162 = sha3(mem[_17160 + 32 len mem[_17160]])
                            mem[0] = sha3(mem[_17160 + 32 len mem[_17160]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17162, 4)
                            stor4[_17162][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17162].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17162].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17162].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17162].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17162].field_512) = mem[_3754 + 191 len 1]
                            _22453 = mem[_7175]
                            stor4[_17162][3][].field_0 = Array(len=_22453, data=mem[_7175 + 32 len _22453])
                        else:
                            mem[mem[64] + ceil32(_9) + _13827 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17300 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13827) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13827) + 288
                            _17302 = sha3(mem[_17300 + 32 len mem[_17300]])
                            mem[0] = sha3(mem[_17300 + 32 len mem[_17300]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17302, 4)
                            stor4[_17302][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17302].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17302].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17302].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17302].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17302].field_512) = mem[_3754 + 191 len 1]
                            _22460 = mem[_7175]
                            stor4[_17302][3][].field_0 = Array(len=_22460, data=mem[_7175 + 32 len _22460])
                else:
                    mem[_7175 + _7167 + 32] = 0
                    mem[_3754 + 192] = _7175
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13812 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13812)] = mem[_368 + 32 len ceil32(_13812)]
                        if ceil32(_13812) <= _13812:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17163 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13812) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13812) + 288
                            _17165 = sha3(mem[_17163 + 32 len mem[_17163]])
                            mem[0] = sha3(mem[_17163 + 32 len mem[_17163]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17165, 4)
                            stor4[_17165][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17165].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17165].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17165].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17165].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17165].field_512) = mem[_3754 + 191 len 1]
                            _22467 = mem[_7175]
                            stor4[_17165][3][].field_0 = Array(len=_22467, data=mem[_7175 + 32 len _22467])
                        else:
                            mem[mem[64] + ceil32(_9) + _13812 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17305 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13812) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13812) + 288
                            _17307 = sha3(mem[_17305 + 32 len mem[_17305]])
                            mem[0] = sha3(mem[_17305 + 32 len mem[_17305]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17307, 4)
                            stor4[_17307][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17307].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17307].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17307].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17307].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17307].field_512) = mem[_3754 + 191 len 1]
                            _22474 = mem[_7175]
                            stor4[_17307][3][].field_0 = Array(len=_22474, data=mem[_7175 + 32 len _22474])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13828 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13828)] = mem[_368 + 32 len ceil32(_13828)]
                        if ceil32(_13828) <= _13828:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17166 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13828) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13828) + 288
                            _17168 = sha3(mem[_17166 + 32 len mem[_17166]])
                            mem[0] = sha3(mem[_17166 + 32 len mem[_17166]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17168, 4)
                            stor4[_17168][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17168].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17168].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17168].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17168].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17168].field_512) = mem[_3754 + 191 len 1]
                            _22481 = mem[_7175]
                            stor4[_17168][3][].field_0 = Array(len=_22481, data=mem[_7175 + 32 len _22481])
                        else:
                            mem[mem[64] + ceil32(_9) + _13828 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17310 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13828) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13828) + 288
                            _17312 = sha3(mem[_17310 + 32 len mem[_17310]])
                            mem[0] = sha3(mem[_17310 + 32 len mem[_17310]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17312, 4)
                            stor4[_17312][].field_0 = Array(len=_3762, data=mem[_3766 + 32 len _3762])
                            uint64(stor4[_17312].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17312].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17312].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17312].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17312].field_512) = mem[_3754 + 191 len 1]
                            _22488 = mem[_7175]
                            stor4[_17312][3][].field_0 = Array(len=_22488, data=mem[_7175 + 32 len _22488])
        else:
            mem[_368 + _366 + 32] = 0
            mem[ceil32(return_data.size) + 544] = _368
            require mem[_6 + 576] == mem[_6 + 600 len 8]
            mem[ceil32(return_data.size) + 576] = mem[_6 + 576]
            require mem[_6 + 608] == mem[_6 + 632 len 8]
            mem[ceil32(return_data.size) + 608] = mem[_6 + 608]
            require 32, Mask(224, 32, arg1.length) >> 32 <= test266151307()
            require return_data.size - 32, Mask(224, 32, arg1.length) >> 32 >= 224
            _3756 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            _3760 = mem[32, Mask(224, 32, arg1.length) >> 32 + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + 480] <= test266151307()
            require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 511 < return_data.size + 480
            _3764 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480] <= test266151307()
            _3768 = mem[64]
            require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 >= mem[64]
            mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32
            mem[_3768] = _3764
            require 32, Mask(224, 32, arg1.length) >> 32 + _3760 + _3764 + 32 <= return_data.size
            mem[_3768 + 32 len ceil32(_3764)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _3760 + 512 len ceil32(_3764)]
            if ceil32(_3764) <= _3764:
                mem[_3756] = _3768
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3756 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3756 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3756 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3756 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3756 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7156 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7164 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7172 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7172] = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require 32, Mask(224, 32, arg1.length) >> 32 + _7156 + _7164 + 32 <= return_data.size
                mem[_7172 + 32 len ceil32(_7164)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7156 + 512 len ceil32(_7164)]
                if ceil32(_7164) <= _7164:
                    mem[_3756 + 192] = _7172
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13813 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13813)] = mem[_368 + 32 len ceil32(_13813)]
                        if ceil32(_13813) <= _13813:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17169 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13813) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13813) + 288
                            _17171 = sha3(mem[_17169 + 32 len mem[_17169]])
                            mem[0] = sha3(mem[_17169 + 32 len mem[_17169]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17171, 4)
                            stor4[_17171][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17171].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17171].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17171].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17171].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17171].field_512) = mem[_3756 + 191 len 1]
                            _22495 = mem[_7172]
                            stor4[_17171][3][].field_0 = Array(len=_22495, data=mem[_7172 + 32 len _22495])
                        else:
                            mem[mem[64] + ceil32(_9) + _13813 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17315 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13813) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13813) + 288
                            _17317 = sha3(mem[_17315 + 32 len mem[_17315]])
                            mem[0] = sha3(mem[_17315 + 32 len mem[_17315]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17317, 4)
                            stor4[_17317][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17317].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17317].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17317].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17317].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17317].field_512) = mem[_3756 + 191 len 1]
                            _22502 = mem[_7172]
                            stor4[_17317][3][].field_0 = Array(len=_22502, data=mem[_7172 + 32 len _22502])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13829 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13829)] = mem[_368 + 32 len ceil32(_13829)]
                        if ceil32(_13829) <= _13829:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17172 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13829) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13829) + 288
                            _17174 = sha3(mem[_17172 + 32 len mem[_17172]])
                            mem[0] = sha3(mem[_17172 + 32 len mem[_17172]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17174, 4)
                            stor4[_17174][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17174].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17174].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17174].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17174].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17174].field_512) = mem[_3756 + 191 len 1]
                            _22509 = mem[_7172]
                            stor4[_17174][3][].field_0 = Array(len=_22509, data=mem[_7172 + 32 len _22509])
                        else:
                            mem[mem[64] + ceil32(_9) + _13829 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17320 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13829) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13829) + 288
                            _17322 = sha3(mem[_17320 + 32 len mem[_17320]])
                            mem[0] = sha3(mem[_17320 + 32 len mem[_17320]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17322, 4)
                            stor4[_17322][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17322].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17322].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17322].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17322].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17322].field_512) = mem[_3756 + 191 len 1]
                            _22516 = mem[_7172]
                            stor4[_17322][3][].field_0 = Array(len=_22516, data=mem[_7172 + 32 len _22516])
                else:
                    mem[_7172 + _7164 + 32] = 0
                    mem[_3756 + 192] = _7172
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13814 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13814)] = mem[_368 + 32 len ceil32(_13814)]
                        if ceil32(_13814) <= _13814:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17175 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13814) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13814) + 288
                            _17177 = sha3(mem[_17175 + 32 len mem[_17175]])
                            mem[0] = sha3(mem[_17175 + 32 len mem[_17175]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17177, 4)
                            stor4[_17177][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17177].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17177].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17177].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17177].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17177].field_512) = mem[_3756 + 191 len 1]
                            _22523 = mem[_7172]
                            stor4[_17177][3][].field_0 = Array(len=_22523, data=mem[_7172 + 32 len _22523])
                        else:
                            mem[mem[64] + ceil32(_9) + _13814 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17325 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13814) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13814) + 288
                            _17327 = sha3(mem[_17325 + 32 len mem[_17325]])
                            mem[0] = sha3(mem[_17325 + 32 len mem[_17325]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17327, 4)
                            stor4[_17327][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17327].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17327].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17327].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17327].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17327].field_512) = mem[_3756 + 191 len 1]
                            _22530 = mem[_7172]
                            stor4[_17327][3][].field_0 = Array(len=_22530, data=mem[_7172 + 32 len _22530])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13830 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13830)] = mem[_368 + 32 len ceil32(_13830)]
                        if ceil32(_13830) <= _13830:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17178 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13830) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13830) + 288
                            _17180 = sha3(mem[_17178 + 32 len mem[_17178]])
                            mem[0] = sha3(mem[_17178 + 32 len mem[_17178]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17180, 4)
                            stor4[_17180][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17180].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17180].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17180].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17180].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17180].field_512) = mem[_3756 + 191 len 1]
                            _22537 = mem[_7172]
                            stor4[_17180][3][].field_0 = Array(len=_22537, data=mem[_7172 + 32 len _22537])
                        else:
                            mem[mem[64] + ceil32(_9) + _13830 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17330 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13830) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13830) + 288
                            _17332 = sha3(mem[_17330 + 32 len mem[_17330]])
                            mem[0] = sha3(mem[_17330 + 32 len mem[_17330]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17332, 4)
                            stor4[_17332][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17332].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17332].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17332].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17332].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17332].field_512) = mem[_3756 + 191 len 1]
                            _22544 = mem[_7172]
                            stor4[_17332][3][].field_0 = Array(len=_22544, data=mem[_7172 + 32 len _22544])
            else:
                mem[_3768 + _3764 + 32] = 0
                mem[_3756] = _3768
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3756 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3756 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3756 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3756 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3756 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7160 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7168 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7176 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7176] = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require 32, Mask(224, 32, arg1.length) >> 32 + _7160 + _7168 + 32 <= return_data.size
                mem[_7176 + 32 len ceil32(_7168)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7160 + 512 len ceil32(_7168)]
                if ceil32(_7168) <= _7168:
                    mem[_3756 + 192] = _7176
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13815 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13815)] = mem[_368 + 32 len ceil32(_13815)]
                        if ceil32(_13815) <= _13815:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17181 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13815) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13815) + 288
                            _17183 = sha3(mem[_17181 + 32 len mem[_17181]])
                            mem[0] = sha3(mem[_17181 + 32 len mem[_17181]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17183, 4)
                            stor4[_17183][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17183].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17183].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17183].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17183].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17183].field_512) = mem[_3756 + 191 len 1]
                            _22551 = mem[_7176]
                            stor4[_17183][3][].field_0 = Array(len=_22551, data=mem[_7176 + 32 len _22551])
                        else:
                            mem[mem[64] + ceil32(_9) + _13815 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17335 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13815) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13815) + 288
                            _17337 = sha3(mem[_17335 + 32 len mem[_17335]])
                            mem[0] = sha3(mem[_17335 + 32 len mem[_17335]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17337, 4)
                            stor4[_17337][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17337].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17337].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17337].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17337].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17337].field_512) = mem[_3756 + 191 len 1]
                            _22558 = mem[_7176]
                            stor4[_17337][3][].field_0 = Array(len=_22558, data=mem[_7176 + 32 len _22558])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13831 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13831)] = mem[_368 + 32 len ceil32(_13831)]
                        if ceil32(_13831) <= _13831:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17184 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13831) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13831) + 288
                            _17186 = sha3(mem[_17184 + 32 len mem[_17184]])
                            mem[0] = sha3(mem[_17184 + 32 len mem[_17184]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17186, 4)
                            stor4[_17186][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17186].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17186].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17186].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17186].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17186].field_512) = mem[_3756 + 191 len 1]
                            _22565 = mem[_7176]
                            stor4[_17186][3][].field_0 = Array(len=_22565, data=mem[_7176 + 32 len _22565])
                        else:
                            mem[mem[64] + ceil32(_9) + _13831 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17340 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13831) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13831) + 288
                            _17342 = sha3(mem[_17340 + 32 len mem[_17340]])
                            mem[0] = sha3(mem[_17340 + 32 len mem[_17340]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17342, 4)
                            stor4[_17342][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17342].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17342].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17342].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17342].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17342].field_512) = mem[_3756 + 191 len 1]
                            _22572 = mem[_7176]
                            stor4[_17342][3][].field_0 = Array(len=_22572, data=mem[_7176 + 32 len _22572])
                else:
                    mem[_7176 + _7168 + 32] = 0
                    mem[_3756 + 192] = _7176
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    mem[mem[64] + 224] = _9
                    mem[mem[64] + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 672 len ceil32(_9)]
                    if ceil32(_9) <= _9:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13816 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13816)] = mem[_368 + 32 len ceil32(_13816)]
                        if ceil32(_13816) <= _13816:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17187 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13816) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13816) + 288
                            _17189 = sha3(mem[_17187 + 32 len mem[_17187]])
                            mem[0] = sha3(mem[_17187 + 32 len mem[_17187]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17189, 4)
                            stor4[_17189][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17189].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17189].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17189].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17189].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17189].field_512) = mem[_3756 + 191 len 1]
                            _22579 = mem[_7176]
                            stor4[_17189][3][].field_0 = Array(len=_22579, data=mem[_7176 + 32 len _22579])
                        else:
                            mem[mem[64] + ceil32(_9) + _13816 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17345 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13816) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13816) + 288
                            _17347 = sha3(mem[_17345 + 32 len mem[_17345]])
                            mem[0] = sha3(mem[_17345 + 32 len mem[_17345]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17347, 4)
                            stor4[_17347][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17347].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17347].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17347].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17347].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17347].field_512) = mem[_3756 + 191 len 1]
                            _22586 = mem[_7176]
                            stor4[_17347][3][].field_0 = Array(len=_22586, data=mem[_7176 + 32 len _22586])
                    else:
                        mem[mem[64] + _9 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_9) + 192
                        _13832 = mem[_368]
                        mem[mem[64] + ceil32(_9) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_9) + 288 len ceil32(_13832)] = mem[_368 + 32 len ceil32(_13832)]
                        if ceil32(_13832) <= _13832:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17190 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13832) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13832) + 288
                            _17192 = sha3(mem[_17190 + 32 len mem[_17190]])
                            mem[0] = sha3(mem[_17190 + 32 len mem[_17190]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17192, 4)
                            stor4[_17192][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17192].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17192].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17192].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17192].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17192].field_512) = mem[_3756 + 191 len 1]
                            _22593 = mem[_7176]
                            stor4[_17192][3][].field_0 = Array(len=_22593, data=mem[_7176 + 32 len _22593])
                        else:
                            mem[mem[64] + ceil32(_9) + _13832 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17350 = mem[64]
                            mem[mem[64]] = ceil32(_9) + ceil32(_13832) + 256
                            mem[64] = mem[64] + ceil32(_9) + ceil32(_13832) + 288
                            _17352 = sha3(mem[_17350 + 32 len mem[_17350]])
                            mem[0] = sha3(mem[_17350 + 32 len mem[_17350]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[32] = 4
                            mem[0] = sha3(_17352, 4)
                            stor4[_17352][].field_0 = Array(len=_3764, data=mem[_3768 + 32 len _3764])
                            uint64(stor4[_17352].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17352].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17352].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17352].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17352].field_512) = mem[_3756 + 191 len 1]
                            _22600 = mem[_7176]
                            stor4[_17352][3][].field_0 = Array(len=_22600, data=mem[_7176 + 32 len _22600])
}



}
