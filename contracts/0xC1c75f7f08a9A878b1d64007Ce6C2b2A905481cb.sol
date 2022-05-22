contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of uint256 stor2;
address stor3;
array of struct stor4;
address stor5;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function sub_81060015(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)].field_0 = 0
    if 31 < stor4[address(arg1)].length:
        idx = 0
        while stor4[address(arg1)].length + 31 / 32 > idx:
            stor4[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x8928ac01: address(arg1)
}

function sub_8f0db879(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(cd[4])].field_0 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        stor4[address(cd[4])][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor4[address(cd[4])].length + 31 / 32 > idx:
        stor4[address(cd[4])][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit 0xb3d38280: address(cd[4]), sha3(call.data[cd[36] + 36 len ('cd', 36).length])
}

function getBasePrice() payable {
    if not bool(stor2.length):
        require ext_code.size(stor1)
        staticcall stor1.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, stor2.length % 128, Mask(248, 8, stor2.length), 4, 0x5553445400000000000000000000000000000000000000000000000000000000
    else:
        if bool(stor2.length) != 1:
            require ext_code.size(stor1)
            staticcall stor1.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args mem[196 len -132]
        else:
            idx = 0
            s = 0
            while idx < stor2.length.field_1:
                mem[idx + 292] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor2.length.field_1) + 292] = 4
            require ext_code.size(stor1)
            staticcall stor1.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(stor2.length.field_1) + 96, 2 * Mask(256, -1, stor2.length.field_1), mem[292 len ceil32(stor2.length.field_1) + 32], 0x5553445400000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 288 <= test266151307())
    return ext_call.return_data[0]
}

function getAssetPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 == arg1:
        return 10^18
    mem[32] = 4
    mem[96] = stor4[address(arg1)].length
    mem[0] = sha3(address(arg1), 4)
    mem[128] = stor4[address(arg1)].field_0
    idx = 128
    s = 0
    while stor4[address(arg1)].length + 96 > idx:
        mem[idx + 32] = stor4[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == stor4[address(arg1)].length:
        require ext_code.size(stor3)
        staticcall stor3.0xb3596f07 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    mem[ceil32(stor4[address(arg1)].length) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(stor4[address(arg1)].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _499 = mem[ceil32(stor4[address(arg1)].length) + 128]
    require mem[ceil32(stor4[address(arg1)].length) + 128] <= test266151307()
    require ceil32(stor4[address(arg1)].length) + mem[ceil32(stor4[address(arg1)].length) + 128] + 159 < ceil32(stor4[address(arg1)].length) + return_data.size + 128
    _515 = mem[ceil32(stor4[address(arg1)].length) + mem[ceil32(stor4[address(arg1)].length) + 128] + 128]
    require mem[ceil32(stor4[address(arg1)].length) + mem[ceil32(stor4[address(arg1)].length) + 128] + 128] <= test266151307()
    require ceil32(mem[ceil32(stor4[address(arg1)].length) + mem[ceil32(stor4[address(arg1)].length) + 128] + 128]) + 32 >= 0 and ceil32(stor4[address(arg1)].length) + ceil32(return_data.size) + ceil32(mem[ceil32(stor4[address(arg1)].length) + mem[ceil32(stor4[address(arg1)].length) + 128] + 128]) + 160 <= test266151307()
    mem[64] = ceil32(stor4[address(arg1)].length) + ceil32(return_data.size) + ceil32(mem[ceil32(stor4[address(arg1)].length) + mem[ceil32(stor4[address(arg1)].length) + 128] + 128]) + 160
    mem[ceil32(stor4[address(arg1)].length) + ceil32(return_data.size) + 128] = mem[ceil32(stor4[address(arg1)].length) + mem[ceil32(stor4[address(arg1)].length) + 128] + 128]
    require _499 + _515 + 32 <= return_data.size
    mem[ceil32(stor4[address(arg1)].length) + ceil32(return_data.size) + 160 len ceil32(_515)] = mem[ceil32(stor4[address(arg1)].length) + _499 + 160 len ceil32(_515)]
    if ceil32(_515) <= _515:
        if 0 == _515:
            revert with 0, 'invalid asset'
        if sha3(mem[ceil32(stor4[address(arg1)].length) + ceil32(return_data.size) + 160 len _515]) != sha3(mem[128 len stor4[address(arg1)].length]):
            revert with 0, 'invalid asset symbol'
        _912 = mem[64]
        mem[64] = mem[64] + 96
        mem[_912] = 0
        mem[_912 + 32] = 0
        mem[_912 + 64] = 0
        _921 = mem[64]
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _515
        mem[mem[64] + 100 len ceil32(_515)] = mem[ceil32(stor4[address(arg1)].length) + ceil32(return_data.size) + 160 len ceil32(_515)]
        if ceil32(_515) <= _515:
            mem[mem[64] + 36] = ceil32(_515) + 96
            if not bool(stor2.length):
                mem[mem[64] + ceil32(_515) + 100] = stor2.length.field_1
                mem[mem[64] + ceil32(_515) + 132] = Mask(248, 8, stor2.length)
                require ext_code.size(stor1)
                staticcall stor1.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args Array(len=_515, data=mem[mem[64] + 100 len ceil32(_515) + 32], Mask(248, 8, stor2.length)), ceil32(_515) + 96
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1337 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_1337] = mem[_1295]
                mem[_1337 + 32] = mem[_1295 + 32]
                mem[_1337 + 64] = mem[_1295 + 64]
                mem[mem[64]] = mem[_1337]
            else:
                if bool(stor2.length) != 1:
                    require ext_code.size(stor1)
                    staticcall stor1.getReferenceData(string arg1, string arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len -mem[64] - 4]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1311 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1345 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1345] = mem[_1311]
                    mem[_1345 + 32] = mem[_1311 + 32]
                    mem[_1345 + 64] = mem[_1311 + 64]
                    mem[mem[64]] = mem[_1345]
                else:
                    mem[mem[64] + ceil32(_515) + 100] = stor2.length.field_1
                    mem[0] = 2
                    idx = 0
                    s = 0
                    while idx < stor2.length.field_1:
                        mem[mem[64] + ceil32(_515) + idx + 132] = stor2[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(stor1)
                    staticcall stor1.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _921 + ceil32(_515) + ceil32(stor2.length.field_1) + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1449 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1453 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1453] = mem[_1449]
                    mem[_1453 + 32] = mem[_1449 + 32]
                    mem[_1453 + 64] = mem[_1449 + 64]
                    mem[mem[64]] = mem[_1453]
        else:
            mem[mem[64] + _515 + 100] = 0
            mem[mem[64] + 36] = ceil32(_515) + 96
            if not bool(stor2.length):
                mem[_921 + ceil32(_515) + 100] = stor2.length.field_1
                mem[_921 + ceil32(_515) + 132] = Mask(248, 8, stor2.length)
                require ext_code.size(stor1)
                staticcall stor1.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _921 + ceil32(_515) + -mem[64] + 160]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1312 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1346 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_1346] = mem[_1312]
                mem[_1346 + 32] = mem[_1312 + 32]
                mem[_1346 + 64] = mem[_1312 + 64]
                mem[mem[64]] = mem[_1346]
            else:
                if bool(stor2.length) != 1:
                    require ext_code.size(stor1)
                    staticcall stor1.getReferenceData(string arg1, string arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len -mem[64] - 4]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1331 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1359 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1359] = mem[_1331]
                    mem[_1359 + 32] = mem[_1331 + 32]
                    mem[_1359 + 64] = mem[_1331 + 64]
                    mem[mem[64]] = mem[_1359]
                else:
                    mem[_921 + ceil32(_515) + 100] = stor2.length.field_1
                    mem[0] = 2
                    idx = 0
                    s = 0
                    while idx < stor2.length.field_1:
                        mem[_921 + ceil32(_515) + idx + 132] = stor2[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(stor1)
                    staticcall stor1.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _921 + ceil32(_515) + ceil32(stor2.length.field_1) + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1450 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1454 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1454] = mem[_1450]
                    mem[_1454 + 32] = mem[_1450 + 32]
                    mem[_1454 + 64] = mem[_1450 + 64]
                    mem[mem[64]] = mem[_1454]
    else:
        mem[ceil32(stor4[address(arg1)].length) + ceil32(return_data.size) + _515 + 160] = 0
        if 0 == _515:
            revert with 0, 'invalid asset'
        if sha3(mem[ceil32(stor4[address(arg1)].length) + ceil32(return_data.size) + 160 len _515]) != sha3(mem[128 len stor4[address(arg1)].length]):
            revert with 0, 'invalid asset symbol'
        _923 = mem[64]
        mem[64] = mem[64] + 96
        mem[_923] = 0
        mem[_923 + 32] = 0
        mem[_923 + 64] = 0
        _934 = mem[64]
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _515
        mem[mem[64] + 100 len ceil32(_515)] = mem[ceil32(stor4[address(arg1)].length) + ceil32(return_data.size) + 160 len ceil32(_515)]
        if ceil32(_515) <= _515:
            mem[mem[64] + 36] = ceil32(_515) + 96
            if not bool(stor2.length):
                mem[mem[64] + ceil32(_515) + 100] = stor2.length.field_1
                mem[mem[64] + ceil32(_515) + 132] = Mask(248, 8, stor2.length)
                require ext_code.size(stor1)
                staticcall stor1.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args Array(len=_515, data=mem[mem[64] + 100 len ceil32(_515) + 32], Mask(248, 8, stor2.length)), ceil32(_515) + 96
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1297 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1339 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_1339] = mem[_1297]
                mem[_1339 + 32] = mem[_1297 + 32]
                mem[_1339 + 64] = mem[_1297 + 64]
                mem[mem[64]] = mem[_1339]
            else:
                if bool(stor2.length) != 1:
                    require ext_code.size(stor1)
                    staticcall stor1.getReferenceData(string arg1, string arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len -mem[64] - 4]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1313 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1348 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1348] = mem[_1313]
                    mem[_1348 + 32] = mem[_1313 + 32]
                    mem[_1348 + 64] = mem[_1313 + 64]
                    mem[mem[64]] = mem[_1348]
                else:
                    mem[mem[64] + ceil32(_515) + 100] = stor2.length.field_1
                    mem[0] = 2
                    idx = 0
                    s = 0
                    while idx < stor2.length.field_1:
                        mem[mem[64] + ceil32(_515) + idx + 132] = stor2[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(stor1)
                    staticcall stor1.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _934 + ceil32(_515) + ceil32(stor2.length.field_1) + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1451 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1455 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1455] = mem[_1451]
                    mem[_1455 + 32] = mem[_1451 + 32]
                    mem[_1455 + 64] = mem[_1451 + 64]
                    mem[mem[64]] = mem[_1455]
        else:
            mem[mem[64] + _515 + 100] = 0
            mem[mem[64] + 36] = ceil32(_515) + 96
            if not bool(stor2.length):
                mem[_934 + ceil32(_515) + 100] = stor2.length.field_1
                mem[_934 + ceil32(_515) + 132] = Mask(248, 8, stor2.length)
                require ext_code.size(stor1)
                staticcall stor1.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _934 + ceil32(_515) + -mem[64] + 160]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1314 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1349 = mem[64]
                require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                mem[64] = mem[64] + 96
                mem[_1349] = mem[_1314]
                mem[_1349 + 32] = mem[_1314 + 32]
                mem[_1349 + 64] = mem[_1314 + 64]
                mem[mem[64]] = mem[_1349]
            else:
                if bool(stor2.length) != 1:
                    require ext_code.size(stor1)
                    staticcall stor1.getReferenceData(string arg1, string arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len -mem[64] - 4]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1332 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1364 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1364] = mem[_1332]
                    mem[_1364 + 32] = mem[_1332 + 32]
                    mem[_1364 + 64] = mem[_1332 + 64]
                    mem[mem[64]] = mem[_1364]
                else:
                    mem[_934 + ceil32(_515) + 100] = stor2.length.field_1
                    mem[0] = 2
                    idx = 0
                    s = 0
                    while idx < stor2.length.field_1:
                        mem[_934 + ceil32(_515) + idx + 132] = stor2[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(stor1)
                    staticcall stor1.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _934 + ceil32(_515) + ceil32(stor2.length.field_1) + -mem[64] + 128]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1452 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1456 = mem[64]
                    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
                    mem[64] = mem[64] + 96
                    mem[_1456] = mem[_1452]
                    mem[_1456 + 32] = mem[_1452 + 32]
                    mem[_1456 + 64] = mem[_1452 + 64]
                    mem[mem[64]] = mem[_1456]
    return memory
      from mem[64]
       len 32
}



}
