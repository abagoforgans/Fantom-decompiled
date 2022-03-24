contract main {




// =====================  Runtime code  =====================


mapping of bool stor0;
address stor1;
array of uint256 stor2;
uint64 stor3;
array of uint256 stor4;
uint64 stor5;
uint64 stor5; offset 64

function _fallback() payable {
    revert
}

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 96
    mem[64] = 352
    mem[320] = 0
    mem[32] = 0
    mem[0] = 4
    if 31 >= stor0[address(arg1)].length:
        stor4.length = uint256(stor0[address(arg1)])
        idx = 0
        while stor4.length + 31 / 32 > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
        mem[352] = 0x1102965c00000000000000000000000000000000000000000000000000000000
        mem[356] = 32
        mem[388] = 160
        if bool(stor2.length):
            if bool(stor2.length) == 1:
                mem[548] = stor2.length.field_1
                mem[0] = 2
                idx = 0
                s = 0
                while idx < stor2.length.field_1:
                    mem[idx + 580] = stor2[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[420] = stor3
                mem[452] = ceil32(stor2.length.field_1) + 192
                if not bool(stor4.length):
                    mem[ceil32(stor2.length.field_1) + 580] = stor4.length.field_1
                    mem[ceil32(stor2.length.field_1) + 612] = Mask(248, 8, stor4.length)
                    mem[484] = uint64(stor5.field_0)
                    mem[516] = uint64(stor5.field_64)
                    require ext_code.size(stor1)
                    staticcall stor1.0x1102965c with:
                            gas gas_remaining wei
                           args 32, 160, stor3, ceil32(stor2.length.field_1) + 192, uint64(stor5.field_0), uint64(stor5.field_64), 2 * Mask(256, -1, stor2.length.field_1), mem[580 len ceil32(stor2.length.field_1) + 32], Mask(248, 8, stor4.length)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    _16793 = mem[352 len 4], 0
                    require mem[352 len 4], 0 <= test266151307()
                    require return_data.size - mem[352 len 4], 0 >= 224
                    require bool(ceil32(return_data.size) + 576 <= test266151307())
                    mem[64] = ceil32(return_data.size) + 576
                    _16834 = mem[mem[352 len 4], 0 + 352]
                    require mem[mem[352 len 4], 0 + 352] <= test266151307()
                    require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                    _16870 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                    require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                    require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                    mem[ceil32(return_data.size) + 576] = _16870
                    require mem[352 len 4], 0 + _16834 + _16870 + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 608 len ceil32(_16870)] = mem[mem[352 len 4], 0 + _16834 + 384 len ceil32(_16870)]
                    if ceil32(_16870) > _16870:
                        mem[ceil32(return_data.size) + _16870 + 608] = 0
                    mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                    require mem[_16793 + 384] == mem[_16793 + 408 len 8]
                    mem[ceil32(return_data.size) + 384] = mem[_16793 + 384]
                    require mem[_16793 + 416] == mem[_16793 + 440 len 8]
                    mem[ceil32(return_data.size) + 416] = mem[_16793 + 416]
                    require mem[_16793 + 448] == mem[_16793 + 472 len 8]
                    mem[ceil32(return_data.size) + 448] = mem[_16793 + 448]
                    require mem[_16793 + 480] == mem[_16793 + 504 len 8]
                    mem[ceil32(return_data.size) + 480] = mem[_16793 + 480]
                    require mem[_16793 + 512] == mem[_16793 + 543 len 1]
                    mem[ceil32(return_data.size) + 512] = mem[_16793 + 512]
                    require mem[_16793 + 544] <= test266151307()
                    require _16793 + mem[_16793 + 544] + 383 < return_data.size + 352
                    require mem[_16793 + mem[_16793 + 544] + 352] <= test266151307()
                    require mem[64] + ceil32(mem[_16793 + mem[_16793 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16793 + mem[_16793 + 544] + 352]) + 32 >= mem[64]
                    require _16793 + mem[_16793 + 544] + mem[_16793 + mem[_16793 + 544] + 352] + 32 <= return_data.size
                    require '' == ''
                    if mem[_16793 + mem[_16793 + 544] + 352] < 1:
                        revert with 0, 'Obi: Out of range'
                    if 0 < mem[_16793 + mem[_16793 + 544] + 352]:
                        if mem[_16793 + mem[_16793 + 544] + 352] < 2:
                            revert with 0, 'Obi: Out of range'
                        if 1 < mem[_16793 + mem[_16793 + 544] + 352]:
                            if mem[_16793 + mem[_16793 + 544] + 352] < 3:
                                revert with 0, 'Obi: Out of range'
                            if 2 < mem[_16793 + mem[_16793 + 544] + 352]:
                                if mem[_16793 + mem[_16793 + 544] + 352] < 4:
                                    revert with 0, 'Obi: Out of range'
                                if 3 < mem[_16793 + mem[_16793 + 544] + 352]:
                                    if mem[_16793 + mem[_16793 + 544] + 352] < 5:
                                        revert with 0, 'Obi: Out of range'
                                    if 4 < mem[_16793 + mem[_16793 + 544] + 352]:
                                        if mem[_16793 + mem[_16793 + 544] + 352] < 6:
                                            revert with 0, 'Obi: Out of range'
                                        if 5 < mem[_16793 + mem[_16793 + 544] + 352]:
                                            if mem[_16793 + mem[_16793 + 544] + 352] < 7:
                                                revert with 0, 'Obi: Out of range'
                                            if 6 < mem[_16793 + mem[_16793 + 544] + 352]:
                                                if mem[_16793 + mem[_16793 + 544] + 352] < 8:
                                                    revert with 0, 'Obi: Out of range'
                                                if 7 < mem[_16793 + mem[_16793 + 544] + 352]:
                                                    return 0
                else:
                    if bool(stor4.length) != 1:
                        mem[484] = uint64(stor5.field_0)
                        mem[516] = uint64(stor5.field_64)
                        require ext_code.size(stor1)
                        staticcall stor1.0x1102965c with:
                                gas gas_remaining wei
                               args mem[356 len -356]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        _16791 = mem[352 len 4], 0
                        require mem[352 len 4], 0 <= test266151307()
                        require return_data.size - mem[352 len 4], 0 >= 224
                        require bool(ceil32(return_data.size) + 576 <= test266151307())
                        mem[64] = ceil32(return_data.size) + 576
                        _16830 = mem[mem[352 len 4], 0 + 352]
                        require mem[mem[352 len 4], 0 + 352] <= test266151307()
                        require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                        _16861 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                        require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                        require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                        mem[ceil32(return_data.size) + 576] = _16861
                        require mem[352 len 4], 0 + _16830 + _16861 + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 608 len ceil32(_16861)] = mem[mem[352 len 4], 0 + _16830 + 384 len ceil32(_16861)]
                        if ceil32(_16861) > _16861:
                            mem[ceil32(return_data.size) + _16861 + 608] = 0
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_16791 + 384] == mem[_16791 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_16791 + 384]
                        require mem[_16791 + 416] == mem[_16791 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_16791 + 416]
                        require mem[_16791 + 448] == mem[_16791 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_16791 + 448]
                        require mem[_16791 + 480] == mem[_16791 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_16791 + 480]
                        require mem[_16791 + 512] == mem[_16791 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_16791 + 512]
                        require mem[_16791 + 544] <= test266151307()
                        require _16791 + mem[_16791 + 544] + 383 < return_data.size + 352
                        require mem[_16791 + mem[_16791 + 544] + 352] <= test266151307()
                        require mem[64] + ceil32(mem[_16791 + mem[_16791 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16791 + mem[_16791 + 544] + 352]) + 32 >= mem[64]
                        require _16791 + mem[_16791 + 544] + mem[_16791 + mem[_16791 + 544] + 352] + 32 <= return_data.size
                        require '' == ''
                        if mem[_16791 + mem[_16791 + 544] + 352] < 1:
                            revert with 0, 'Obi: Out of range'
                        if 0 < mem[_16791 + mem[_16791 + 544] + 352]:
                            if mem[_16791 + mem[_16791 + 544] + 352] < 2:
                                revert with 0, 'Obi: Out of range'
                            if 1 < mem[_16791 + mem[_16791 + 544] + 352]:
                                if mem[_16791 + mem[_16791 + 544] + 352] < 3:
                                    revert with 0, 'Obi: Out of range'
                                if 2 < mem[_16791 + mem[_16791 + 544] + 352]:
                                    if mem[_16791 + mem[_16791 + 544] + 352] < 4:
                                        revert with 0, 'Obi: Out of range'
                                    if 3 < mem[_16791 + mem[_16791 + 544] + 352]:
                                        if mem[_16791 + mem[_16791 + 544] + 352] < 5:
                                            revert with 0, 'Obi: Out of range'
                                        if 4 < mem[_16791 + mem[_16791 + 544] + 352]:
                                            if mem[_16791 + mem[_16791 + 544] + 352] < 6:
                                                revert with 0, 'Obi: Out of range'
                                            if 5 < mem[_16791 + mem[_16791 + 544] + 352]:
                                                if mem[_16791 + mem[_16791 + 544] + 352] < 7:
                                                    revert with 0, 'Obi: Out of range'
                                                if 6 < mem[_16791 + mem[_16791 + 544] + 352]:
                                                    if mem[_16791 + mem[_16791 + 544] + 352] < 8:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 7 < mem[_16791 + mem[_16791 + 544] + 352]:
                                                        return 0
                    else:
                        mem[ceil32(stor2.length.field_1) + 580] = stor4.length.field_1
                        mem[0] = 4
                        idx = 0
                        s = 0
                        while idx < stor4.length.field_1:
                            mem[ceil32(stor2.length.field_1) + idx + 612] = stor4[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[484] = uint64(stor5.field_0)
                        mem[516] = uint64(stor5.field_64)
                        require ext_code.size(stor1)
                        staticcall stor1.0x1102965c with:
                                gas gas_remaining wei
                               args 32, 160, stor3, ceil32(stor2.length.field_1) + 192, uint64(stor5.field_0), uint64(stor5.field_64), 2 * Mask(256, -1, stor2.length.field_1), mem[580 len ceil32(stor2.length.field_1) + ceil32(stor4.length.field_1) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        _27460 = mem[352 len 4], 0
                        require mem[352 len 4], 0 <= test266151307()
                        require return_data.size - mem[352 len 4], 0 >= 224
                        require bool(ceil32(return_data.size) + 576 <= test266151307())
                        mem[64] = ceil32(return_data.size) + 576
                        _27820 = mem[mem[352 len 4], 0 + 352]
                        require mem[mem[352 len 4], 0 + 352] <= test266151307()
                        require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                        _28084 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                        require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                        require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                        mem[ceil32(return_data.size) + 576] = _28084
                        require mem[352 len 4], 0 + _27820 + _28084 + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 608 len ceil32(_28084)] = mem[mem[352 len 4], 0 + _27820 + 384 len ceil32(_28084)]
                        if ceil32(_28084) > _28084:
                            mem[ceil32(return_data.size) + _28084 + 608] = 0
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_27460 + 384] == mem[_27460 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_27460 + 384]
                        require mem[_27460 + 416] == mem[_27460 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_27460 + 416]
                        require mem[_27460 + 448] == mem[_27460 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_27460 + 448]
                        require mem[_27460 + 480] == mem[_27460 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_27460 + 480]
                        require mem[_27460 + 512] == mem[_27460 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_27460 + 512]
                        require mem[_27460 + 544] <= test266151307()
                        require _27460 + mem[_27460 + 544] + 383 < return_data.size + 352
                        require mem[_27460 + mem[_27460 + 544] + 352] <= test266151307()
                        require mem[64] + ceil32(mem[_27460 + mem[_27460 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_27460 + mem[_27460 + 544] + 352]) + 32 >= mem[64]
                        require _27460 + mem[_27460 + 544] + mem[_27460 + mem[_27460 + 544] + 352] + 32 <= return_data.size
                        require '' == ''
                        if mem[_27460 + mem[_27460 + 544] + 352] < 1:
                            revert with 0, 'Obi: Out of range'
                        if 0 < mem[_27460 + mem[_27460 + 544] + 352]:
                            if mem[_27460 + mem[_27460 + 544] + 352] < 2:
                                revert with 0, 'Obi: Out of range'
                            if 1 < mem[_27460 + mem[_27460 + 544] + 352]:
                                if mem[_27460 + mem[_27460 + 544] + 352] < 3:
                                    revert with 0, 'Obi: Out of range'
                                if 2 < mem[_27460 + mem[_27460 + 544] + 352]:
                                    if mem[_27460 + mem[_27460 + 544] + 352] < 4:
                                        revert with 0, 'Obi: Out of range'
                                    if 3 < mem[_27460 + mem[_27460 + 544] + 352]:
                                        if mem[_27460 + mem[_27460 + 544] + 352] < 5:
                                            revert with 0, 'Obi: Out of range'
                                        if 4 < mem[_27460 + mem[_27460 + 544] + 352]:
                                            if mem[_27460 + mem[_27460 + 544] + 352] < 6:
                                                revert with 0, 'Obi: Out of range'
                                            if 5 < mem[_27460 + mem[_27460 + 544] + 352]:
                                                if mem[_27460 + mem[_27460 + 544] + 352] < 7:
                                                    revert with 0, 'Obi: Out of range'
                                                if 6 < mem[_27460 + mem[_27460 + 544] + 352]:
                                                    if mem[_27460 + mem[_27460 + 544] + 352] < 8:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 7 < mem[_27460 + mem[_27460 + 544] + 352]:
                                                        return 0
            else:
                mem[420] = stor3
                mem[452] = -388
                if bool(stor4.length):
                    if bool(stor4.length) == 1:
                        mem[0] = 4
                        idx = 0
                        s = 0
                        while idx < stor4.length.field_1:
                            mem[idx + 32] = stor4[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[484] = uint64(stor5.field_0)
                        mem[516] = uint64(stor5.field_64)
                        require ext_code.size(stor1)
                        staticcall stor1.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(stor4.length.field_1) + -mem[64] + 28]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16710 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _16716 = mem[_16710]
                        require mem[_16710] <= test266151307()
                        require return_data.size - mem[_16710] >= 224
                        require bool(_16710 + ceil32(return_data.size) + 224 <= test266151307())
                        mem[64] = _16710 + ceil32(return_data.size) + 224
                        _16741 = mem[_16710 + _16716]
                        require mem[_16710 + _16716] <= test266151307()
                        require _16710 + _16716 + mem[_16710 + _16716] + 31 < _16710 + return_data.size
                        _16745 = mem[_16710 + _16716 + mem[_16710 + _16716]]
                        require mem[_16710 + _16716 + mem[_16710 + _16716]] <= test266151307()
                        require _16710 + ceil32(return_data.size) + ceil32(mem[_16710 + _16716 + mem[_16710 + _16716]]) + 256 <= test266151307() and ceil32(mem[_16710 + _16716 + mem[_16710 + _16716]]) + 256 >= 224
                        mem[64] = _16710 + ceil32(return_data.size) + ceil32(mem[_16710 + _16716 + mem[_16710 + _16716]]) + 256
                        mem[_16710 + ceil32(return_data.size) + 224] = _16745
                        require _16716 + _16741 + _16745 + 32 <= return_data.size
                        mem[_16710 + ceil32(return_data.size) + 256 len ceil32(_16745)] = mem[_16710 + _16716 + _16741 + 32 len ceil32(_16745)]
                        if ceil32(_16745) <= _16745:
                            mem[_16710 + ceil32(return_data.size)] = _16710 + ceil32(return_data.size) + 224
                            require mem[_16710 + _16716 + 32] == mem[_16710 + _16716 + 56 len 8]
                            mem[_16710 + ceil32(return_data.size) + 32] = mem[_16710 + _16716 + 32]
                            require mem[_16710 + _16716 + 64] == mem[_16710 + _16716 + 88 len 8]
                            mem[_16710 + ceil32(return_data.size) + 64] = mem[_16710 + _16716 + 64]
                            require mem[_16710 + _16716 + 96] == mem[_16710 + _16716 + 120 len 8]
                            mem[_16710 + ceil32(return_data.size) + 96] = mem[_16710 + _16716 + 96]
                            require mem[_16710 + _16716 + 128] == mem[_16710 + _16716 + 152 len 8]
                            mem[_16710 + ceil32(return_data.size) + 128] = mem[_16710 + _16716 + 128]
                            require mem[_16710 + _16716 + 160] == mem[_16710 + _16716 + 191 len 1]
                            mem[_16710 + ceil32(return_data.size) + 160] = mem[_16710 + _16716 + 160]
                            _28152 = mem[_16710 + _16716 + 192]
                            require mem[_16710 + _16716 + 192] <= test266151307()
                            require _16710 + _16716 + mem[_16710 + _16716 + 192] + 31 < _16710 + return_data.size
                            _28431 = mem[_16710 + _16716 + mem[_16710 + _16716 + 192]]
                            require mem[_16710 + _16716 + mem[_16710 + _16716 + 192]] <= test266151307()
                            _28535 = mem[64]
                            require mem[64] + ceil32(mem[_16710 + _16716 + mem[_16710 + _16716 + 192]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16710 + _16716 + mem[_16710 + _16716 + 192]]) + 32 >= mem[64]
                            mem[64] = mem[64] + ceil32(mem[_16710 + _16716 + mem[_16710 + _16716 + 192]]) + 32
                            mem[_28535] = _28431
                            require _16716 + _28152 + _28431 + 32 <= return_data.size
                            mem[_28535 + 32 len ceil32(_28431)] = mem[_16710 + _16716 + _28152 + 32 len ceil32(_28431)]
                            if ceil32(_28431) > _28431:
                                mem[_28535 + _28431 + 32] = 0
                            require mem[_16710 + 32] == mem[_16710 + 32]
                            if _28431 < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < _28431:
                                if _28431 < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < _28431:
                                    if _28431 < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < _28431:
                                        if _28431 < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < _28431:
                                            if _28431 < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < _28431:
                                                if _28431 < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < _28431:
                                                    if _28431 < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < _28431:
                                                        if _28431 < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < _28431:
                                                            return 0
                        else:
                            mem[_16710 + ceil32(return_data.size) + _16745 + 256] = 0
                            mem[_16710 + ceil32(return_data.size)] = _16710 + ceil32(return_data.size) + 224
                            require mem[_16710 + _16716 + 32] == mem[_16710 + _16716 + 56 len 8]
                            mem[_16710 + ceil32(return_data.size) + 32] = mem[_16710 + _16716 + 32]
                            require mem[_16710 + _16716 + 64] == mem[_16710 + _16716 + 88 len 8]
                            mem[_16710 + ceil32(return_data.size) + 64] = mem[_16710 + _16716 + 64]
                            require mem[_16710 + _16716 + 96] == mem[_16710 + _16716 + 120 len 8]
                            mem[_16710 + ceil32(return_data.size) + 96] = mem[_16710 + _16716 + 96]
                            require mem[_16710 + _16716 + 128] == mem[_16710 + _16716 + 152 len 8]
                            mem[_16710 + ceil32(return_data.size) + 128] = mem[_16710 + _16716 + 128]
                            require mem[_16710 + _16716 + 160] == mem[_16710 + _16716 + 191 len 1]
                            mem[_16710 + ceil32(return_data.size) + 160] = mem[_16710 + _16716 + 160]
                            _28211 = mem[_16710 + _16716 + 192]
                            require mem[_16710 + _16716 + 192] <= test266151307()
                            require _16710 + _16716 + mem[_16710 + _16716 + 192] + 31 < _16710 + return_data.size
                            _28498 = mem[_16710 + _16716 + mem[_16710 + _16716 + 192]]
                            require mem[_16710 + _16716 + mem[_16710 + _16716 + 192]] <= test266151307()
                            _28561 = mem[64]
                            require mem[64] + ceil32(mem[_16710 + _16716 + mem[_16710 + _16716 + 192]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16710 + _16716 + mem[_16710 + _16716 + 192]]) + 32 >= mem[64]
                            mem[64] = mem[64] + ceil32(mem[_16710 + _16716 + mem[_16710 + _16716 + 192]]) + 32
                            mem[_28561] = _28498
                            require _16716 + _28211 + _28498 + 32 <= return_data.size
                            mem[_28561 + 32 len ceil32(_28498)] = mem[_16710 + _16716 + _28211 + 32 len ceil32(_28498)]
                            if ceil32(_28498) > _28498:
                                mem[_28561 + _28498 + 32] = 0
                            require mem[_16710 + 32] == mem[_16710 + 32]
                            if _28498 < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < _28498:
                                if _28498 < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < _28498:
                                    if _28498 < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < _28498:
                                        if _28498 < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < _28498:
                                            if _28498 < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < _28498:
                                                if _28498 < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < _28498:
                                                    if _28498 < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < _28498:
                                                        if _28498 < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < _28498:
                                                            return 0
                    else:
                        mem[484] = uint64(stor5.field_0)
                        mem[516] = uint64(stor5.field_64)
                        require ext_code.size(stor1)
                        staticcall stor1.0x1102965c with:
                                gas gas_remaining wei
                               args mem[356 len -356]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        _6544 = mem[352 len 4], 0
                        require mem[352 len 4], 0 <= test266151307()
                        require return_data.size - mem[352 len 4], 0 >= 224
                        require bool(ceil32(return_data.size) + 576 <= test266151307())
                        mem[64] = ceil32(return_data.size) + 576
                        _6593 = mem[mem[352 len 4], 0 + 352]
                        require mem[mem[352 len 4], 0 + 352] <= test266151307()
                        require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                        _6616 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                        require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                        require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                        mem[ceil32(return_data.size) + 576] = _6616
                        require mem[352 len 4], 0 + _6593 + _6616 + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 608 len ceil32(_6616)] = mem[mem[352 len 4], 0 + _6593 + 384 len ceil32(_6616)]
                        if ceil32(_6616) <= _6616:
                            mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                            require mem[_6544 + 384] == mem[_6544 + 408 len 8]
                            mem[ceil32(return_data.size) + 384] = mem[_6544 + 384]
                            require mem[_6544 + 416] == mem[_6544 + 440 len 8]
                            mem[ceil32(return_data.size) + 416] = mem[_6544 + 416]
                            require mem[_6544 + 448] == mem[_6544 + 472 len 8]
                            mem[ceil32(return_data.size) + 448] = mem[_6544 + 448]
                            require mem[_6544 + 480] == mem[_6544 + 504 len 8]
                            mem[ceil32(return_data.size) + 480] = mem[_6544 + 480]
                            require mem[_6544 + 512] == mem[_6544 + 543 len 1]
                            mem[ceil32(return_data.size) + 512] = mem[_6544 + 512]
                            _16753 = mem[_6544 + 544]
                            require mem[_6544 + 544] <= test266151307()
                            require _6544 + mem[_6544 + 544] + 383 < return_data.size + 352
                            _16779 = mem[_6544 + mem[_6544 + 544] + 352]
                            require mem[_6544 + mem[_6544 + 544] + 352] <= test266151307()
                            _16803 = mem[64]
                            require mem[64] + ceil32(mem[_6544 + mem[_6544 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6544 + mem[_6544 + 544] + 352]) + 32 >= mem[64]
                            mem[64] = mem[64] + ceil32(mem[_6544 + mem[_6544 + 544] + 352]) + 32
                            mem[_16803] = mem[_6544 + mem[_6544 + 544] + 352]
                            require _6544 + _16753 + _16779 + 32 <= return_data.size
                            mem[_16803 + 32 len ceil32(_16779)] = mem[_6544 + _16753 + 384 len ceil32(_16779)]
                            if ceil32(_16779) <= _16779:
                                mem[ceil32(return_data.size) + 544] = _16803
                                require '' == ''
                                _27006 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_27006] = 0
                                _27038 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27038] = 0
                                mem[_27038 + 32] = 96
                                _27095 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27095] = 0
                                mem[_27095 + 32] = 96
                                _27125 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27125] = 0
                                mem[_27125 + 32] = _16803
                                if mem[_16803] < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < mem[_16803]:
                                    mem[_27125] = 1
                                    if mem[_16803] < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < mem[_16803]:
                                        mem[_27125] = 2
                                        if mem[_16803] < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < mem[_16803]:
                                            mem[_27125] = 3
                                            if mem[_16803] < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < mem[_16803]:
                                                mem[_27125] = 4
                                                if mem[_16803] < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < mem[_16803]:
                                                    mem[_27125] = 5
                                                    if mem[_16803] < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < mem[_16803]:
                                                        mem[_27125] = 6
                                                        if mem[_16803] < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < mem[_16803]:
                                                            mem[_27125] = 7
                                                            if mem[_16803] < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < mem[_16803]:
                                                                return 0
                            else:
                                mem[_16803 + _16779 + 32] = 0
                                mem[ceil32(return_data.size) + 544] = _16803
                                require '' == ''
                                _27022 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_27022] = 0
                                _27054 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27054] = 0
                                mem[_27054 + 32] = 96
                                _27126 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27126] = 0
                                mem[_27126 + 32] = 96
                                _27143 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27143] = 0
                                mem[_27143 + 32] = _16803
                                if mem[_16803] < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < mem[_16803]:
                                    mem[_27143] = 1
                                    if mem[_16803] < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < mem[_16803]:
                                        mem[_27143] = 2
                                        if mem[_16803] < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < mem[_16803]:
                                            mem[_27143] = 3
                                            if mem[_16803] < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < mem[_16803]:
                                                mem[_27143] = 4
                                                if mem[_16803] < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < mem[_16803]:
                                                    mem[_27143] = 5
                                                    if mem[_16803] < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < mem[_16803]:
                                                        mem[_27143] = 6
                                                        if mem[_16803] < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < mem[_16803]:
                                                            mem[_27143] = 7
                                                            if mem[_16803] < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < mem[_16803]:
                                                                return 0
                        else:
                            mem[ceil32(return_data.size) + _6616 + 608] = 0
                            mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                            require mem[_6544 + 384] == mem[_6544 + 408 len 8]
                            mem[ceil32(return_data.size) + 384] = mem[_6544 + 384]
                            require mem[_6544 + 416] == mem[_6544 + 440 len 8]
                            mem[ceil32(return_data.size) + 416] = mem[_6544 + 416]
                            require mem[_6544 + 448] == mem[_6544 + 472 len 8]
                            mem[ceil32(return_data.size) + 448] = mem[_6544 + 448]
                            require mem[_6544 + 480] == mem[_6544 + 504 len 8]
                            mem[ceil32(return_data.size) + 480] = mem[_6544 + 480]
                            require mem[_6544 + 512] == mem[_6544 + 543 len 1]
                            mem[ceil32(return_data.size) + 512] = mem[_6544 + 512]
                            _16763 = mem[_6544 + 544]
                            require mem[_6544 + 544] <= test266151307()
                            require _6544 + mem[_6544 + 544] + 383 < return_data.size + 352
                            _16789 = mem[_6544 + mem[_6544 + 544] + 352]
                            require mem[_6544 + mem[_6544 + 544] + 352] <= test266151307()
                            _16811 = mem[64]
                            require mem[64] + ceil32(mem[_6544 + mem[_6544 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6544 + mem[_6544 + 544] + 352]) + 32 >= mem[64]
                            mem[64] = mem[64] + ceil32(mem[_6544 + mem[_6544 + 544] + 352]) + 32
                            mem[_16811] = mem[_6544 + mem[_6544 + 544] + 352]
                            require _6544 + _16763 + _16789 + 32 <= return_data.size
                            mem[_16811 + 32 len ceil32(_16789)] = mem[_6544 + _16763 + 384 len ceil32(_16789)]
                            if ceil32(_16789) <= _16789:
                                mem[ceil32(return_data.size) + 544] = _16811
                                require '' == ''
                                _27007 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_27007] = 0
                                _27039 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27039] = 0
                                mem[_27039 + 32] = 96
                                _27096 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27096] = 0
                                mem[_27096 + 32] = 96
                                _27127 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27127] = 0
                                mem[_27127 + 32] = _16811
                                if mem[_16811] < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < mem[_16811]:
                                    mem[_27127] = 1
                                    if mem[_16811] < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < mem[_16811]:
                                        mem[_27127] = 2
                                        if mem[_16811] < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < mem[_16811]:
                                            mem[_27127] = 3
                                            if mem[_16811] < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < mem[_16811]:
                                                mem[_27127] = 4
                                                if mem[_16811] < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < mem[_16811]:
                                                    mem[_27127] = 5
                                                    if mem[_16811] < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < mem[_16811]:
                                                        mem[_27127] = 6
                                                        if mem[_16811] < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < mem[_16811]:
                                                            mem[_27127] = 7
                                                            if mem[_16811] < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < mem[_16811]:
                                                                return 0
                            else:
                                mem[_16811 + _16789 + 32] = 0
                                mem[ceil32(return_data.size) + 544] = _16811
                                require '' == ''
                                _27023 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_27023] = 0
                                _27055 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27055] = 0
                                mem[_27055 + 32] = 96
                                _27128 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27128] = 0
                                mem[_27128 + 32] = 96
                                _27144 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27144] = 0
                                mem[_27144 + 32] = _16811
                                if mem[_16811] < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < mem[_16811]:
                                    mem[_27144] = 1
                                    if mem[_16811] < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < mem[_16811]:
                                        mem[_27144] = 2
                                        if mem[_16811] < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < mem[_16811]:
                                            mem[_27144] = 3
                                            if mem[_16811] < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < mem[_16811]:
                                                mem[_27144] = 4
                                                if mem[_16811] < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < mem[_16811]:
                                                    mem[_27144] = 5
                                                    if mem[_16811] < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < mem[_16811]:
                                                        mem[_27144] = 6
                                                        if mem[_16811] < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < mem[_16811]:
                                                            mem[_27144] = 7
                                                            if mem[_16811] < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < mem[_16811]:
                                                                return 0
                else:
                    mem[0] = stor4.length.field_1
                    mem[32] = Mask(248, 8, stor4.length)
                    mem[484] = uint64(stor5.field_0)
                    mem[516] = uint64(stor5.field_64)
                    require ext_code.size(stor1)
                    staticcall stor1.0x1102965c with:
                            gas gas_remaining wei
                           args mem[356 len -292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    _6550 = mem[352 len 4], 0
                    require mem[352 len 4], 0 <= test266151307()
                    require return_data.size - mem[352 len 4], 0 >= 224
                    require bool(ceil32(return_data.size) + 576 <= test266151307())
                    mem[64] = ceil32(return_data.size) + 576
                    _6603 = mem[mem[352 len 4], 0 + 352]
                    require mem[mem[352 len 4], 0 + 352] <= test266151307()
                    require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                    _6629 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                    require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                    require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                    mem[ceil32(return_data.size) + 576] = _6629
                    require mem[352 len 4], 0 + _6603 + _6629 + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 608 len ceil32(_6629)] = mem[mem[352 len 4], 0 + _6603 + 384 len ceil32(_6629)]
                    if ceil32(_6629) <= _6629:
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_6550 + 384] == mem[_6550 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_6550 + 384]
                        require mem[_6550 + 416] == mem[_6550 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_6550 + 416]
                        require mem[_6550 + 448] == mem[_6550 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_6550 + 448]
                        require mem[_6550 + 480] == mem[_6550 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_6550 + 480]
                        require mem[_6550 + 512] == mem[_6550 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_6550 + 512]
                        _16752 = mem[_6550 + 544]
                        require mem[_6550 + 544] <= test266151307()
                        require _6550 + mem[_6550 + 544] + 383 < return_data.size + 352
                        _16777 = mem[_6550 + mem[_6550 + 544] + 352]
                        require mem[_6550 + mem[_6550 + 544] + 352] <= test266151307()
                        _16802 = mem[64]
                        require mem[64] + ceil32(mem[_6550 + mem[_6550 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6550 + mem[_6550 + 544] + 352]) + 32 >= mem[64]
                        mem[64] = mem[64] + ceil32(mem[_6550 + mem[_6550 + 544] + 352]) + 32
                        mem[_16802] = mem[_6550 + mem[_6550 + 544] + 352]
                        require _6550 + _16752 + _16777 + 32 <= return_data.size
                        mem[_16802 + 32 len ceil32(_16777)] = mem[_6550 + _16752 + 384 len ceil32(_16777)]
                        if ceil32(_16777) <= _16777:
                            mem[ceil32(return_data.size) + 544] = _16802
                            require '' == ''
                            _27004 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_27004] = 0
                            _27036 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27036] = 0
                            mem[_27036 + 32] = 96
                            _27092 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27092] = 0
                            mem[_27092 + 32] = 96
                            _27121 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27121] = 0
                            mem[_27121 + 32] = _16802
                            if mem[_16802] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_16802]:
                                mem[_27121] = 1
                                if mem[_16802] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_16802]:
                                    mem[_27121] = 2
                                    if mem[_16802] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_16802]:
                                        mem[_27121] = 3
                                        if mem[_16802] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_16802]:
                                            mem[_27121] = 4
                                            if mem[_16802] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_16802]:
                                                mem[_27121] = 5
                                                if mem[_16802] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_16802]:
                                                    mem[_27121] = 6
                                                    if mem[_16802] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_16802]:
                                                        mem[_27121] = 7
                                                        if mem[_16802] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_16802]:
                                                            return 0
                        else:
                            mem[_16802 + _16777 + 32] = 0
                            mem[ceil32(return_data.size) + 544] = _16802
                            require '' == ''
                            _27020 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_27020] = 0
                            _27052 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27052] = 0
                            mem[_27052 + 32] = 96
                            _27122 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27122] = 0
                            mem[_27122 + 32] = 96
                            _27141 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27141] = 0
                            mem[_27141 + 32] = _16802
                            if mem[_16802] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_16802]:
                                mem[_27141] = 1
                                if mem[_16802] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_16802]:
                                    mem[_27141] = 2
                                    if mem[_16802] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_16802]:
                                        mem[_27141] = 3
                                        if mem[_16802] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_16802]:
                                            mem[_27141] = 4
                                            if mem[_16802] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_16802]:
                                                mem[_27141] = 5
                                                if mem[_16802] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_16802]:
                                                    mem[_27141] = 6
                                                    if mem[_16802] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_16802]:
                                                        mem[_27141] = 7
                                                        if mem[_16802] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_16802]:
                                                            return 0
                    else:
                        mem[ceil32(return_data.size) + _6629 + 608] = 0
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_6550 + 384] == mem[_6550 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_6550 + 384]
                        require mem[_6550 + 416] == mem[_6550 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_6550 + 416]
                        require mem[_6550 + 448] == mem[_6550 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_6550 + 448]
                        require mem[_6550 + 480] == mem[_6550 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_6550 + 480]
                        require mem[_6550 + 512] == mem[_6550 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_6550 + 512]
                        _16762 = mem[_6550 + 544]
                        require mem[_6550 + 544] <= test266151307()
                        require _6550 + mem[_6550 + 544] + 383 < return_data.size + 352
                        _16788 = mem[_6550 + mem[_6550 + 544] + 352]
                        require mem[_6550 + mem[_6550 + 544] + 352] <= test266151307()
                        _16810 = mem[64]
                        require mem[64] + ceil32(mem[_6550 + mem[_6550 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6550 + mem[_6550 + 544] + 352]) + 32 >= mem[64]
                        mem[64] = mem[64] + ceil32(mem[_6550 + mem[_6550 + 544] + 352]) + 32
                        mem[_16810] = mem[_6550 + mem[_6550 + 544] + 352]
                        require _6550 + _16762 + _16788 + 32 <= return_data.size
                        mem[_16810 + 32 len ceil32(_16788)] = mem[_6550 + _16762 + 384 len ceil32(_16788)]
                        if ceil32(_16788) <= _16788:
                            mem[ceil32(return_data.size) + 544] = _16810
                            require '' == ''
                            _27005 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_27005] = 0
                            _27037 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27037] = 0
                            mem[_27037 + 32] = 96
                            _27093 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27093] = 0
                            mem[_27093 + 32] = 96
                            _27123 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27123] = 0
                            mem[_27123 + 32] = _16810
                            if mem[_16810] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_16810]:
                                mem[_27123] = 1
                                if mem[_16810] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_16810]:
                                    mem[_27123] = 2
                                    if mem[_16810] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_16810]:
                                        mem[_27123] = 3
                                        if mem[_16810] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_16810]:
                                            mem[_27123] = 4
                                            if mem[_16810] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_16810]:
                                                mem[_27123] = 5
                                                if mem[_16810] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_16810]:
                                                    mem[_27123] = 6
                                                    if mem[_16810] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_16810]:
                                                        mem[_27123] = 7
                                                        if mem[_16810] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_16810]:
                                                            return 0
                        else:
                            mem[_16810 + _16788 + 32] = 0
                            mem[ceil32(return_data.size) + 544] = _16810
                            require '' == ''
                            _27021 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_27021] = 0
                            _27053 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27053] = 0
                            mem[_27053 + 32] = 96
                            _27124 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27124] = 0
                            mem[_27124 + 32] = 96
                            _27142 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27142] = 0
                            mem[_27142 + 32] = _16810
                            if mem[_16810] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_16810]:
                                mem[_27142] = 1
                                if mem[_16810] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_16810]:
                                    mem[_27142] = 2
                                    if mem[_16810] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_16810]:
                                        mem[_27142] = 3
                                        if mem[_16810] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_16810]:
                                            mem[_27142] = 4
                                            if mem[_16810] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_16810]:
                                                mem[_27142] = 5
                                                if mem[_16810] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_16810]:
                                                    mem[_27142] = 6
                                                    if mem[_16810] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_16810]:
                                                        mem[_27142] = 7
                                                        if mem[_16810] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_16810]:
                                                            return 0
        else:
            mem[548] = stor2.length.field_1
            mem[580] = Mask(248, 8, stor2.length)
            mem[420] = stor3
            mem[452] = 224
            if not bool(stor4.length):
                mem[612] = stor4.length.field_1
                mem[644] = Mask(248, 8, stor4.length)
                mem[484] = uint64(stor5.field_0)
                mem[516] = uint64(stor5.field_64)
                require ext_code.size(stor1)
                staticcall stor1.0x1102965c with:
                        gas gas_remaining wei
                       args 32, 160, stor3, 224, uint64(stor5.field_0), uint64(stor5.field_64), stor2.length % 128, Mask(248, 8, stor2.length), stor4.length % 128, Mask(248, 8, stor4.length)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                _6556 = mem[352 len 4], 0
                require mem[352 len 4], 0 <= test266151307()
                require return_data.size - mem[352 len 4], 0 >= 224
                require bool(ceil32(return_data.size) + 576 <= test266151307())
                mem[64] = ceil32(return_data.size) + 576
                _6609 = mem[mem[352 len 4], 0 + 352]
                require mem[mem[352 len 4], 0 + 352] <= test266151307()
                require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                _6638 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                mem[ceil32(return_data.size) + 576] = _6638
                require mem[352 len 4], 0 + _6609 + _6638 + 32 <= return_data.size
                mem[ceil32(return_data.size) + 608 len ceil32(_6638)] = mem[mem[352 len 4], 0 + _6609 + 384 len ceil32(_6638)]
                if ceil32(_6638) > _6638:
                    mem[ceil32(return_data.size) + _6638 + 608] = 0
                mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                require mem[_6556 + 384] == mem[_6556 + 408 len 8]
                mem[ceil32(return_data.size) + 384] = mem[_6556 + 384]
                require mem[_6556 + 416] == mem[_6556 + 440 len 8]
                mem[ceil32(return_data.size) + 416] = mem[_6556 + 416]
                require mem[_6556 + 448] == mem[_6556 + 472 len 8]
                mem[ceil32(return_data.size) + 448] = mem[_6556 + 448]
                require mem[_6556 + 480] == mem[_6556 + 504 len 8]
                mem[ceil32(return_data.size) + 480] = mem[_6556 + 480]
                require mem[_6556 + 512] == mem[_6556 + 543 len 1]
                mem[ceil32(return_data.size) + 512] = mem[_6556 + 512]
                require mem[_6556 + 544] <= test266151307()
                require _6556 + mem[_6556 + 544] + 383 < return_data.size + 352
                require mem[_6556 + mem[_6556 + 544] + 352] <= test266151307()
                require mem[64] + ceil32(mem[_6556 + mem[_6556 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6556 + mem[_6556 + 544] + 352]) + 32 >= mem[64]
                require _6556 + mem[_6556 + 544] + mem[_6556 + mem[_6556 + 544] + 352] + 32 <= return_data.size
                require '' == ''
                if mem[_6556 + mem[_6556 + 544] + 352] < 1:
                    revert with 0, 'Obi: Out of range'
                if 0 < mem[_6556 + mem[_6556 + 544] + 352]:
                    if mem[_6556 + mem[_6556 + 544] + 352] < 2:
                        revert with 0, 'Obi: Out of range'
                    if 1 < mem[_6556 + mem[_6556 + 544] + 352]:
                        if mem[_6556 + mem[_6556 + 544] + 352] < 3:
                            revert with 0, 'Obi: Out of range'
                        if 2 < mem[_6556 + mem[_6556 + 544] + 352]:
                            if mem[_6556 + mem[_6556 + 544] + 352] < 4:
                                revert with 0, 'Obi: Out of range'
                            if 3 < mem[_6556 + mem[_6556 + 544] + 352]:
                                if mem[_6556 + mem[_6556 + 544] + 352] < 5:
                                    revert with 0, 'Obi: Out of range'
                                if 4 < mem[_6556 + mem[_6556 + 544] + 352]:
                                    if mem[_6556 + mem[_6556 + 544] + 352] < 6:
                                        revert with 0, 'Obi: Out of range'
                                    if 5 < mem[_6556 + mem[_6556 + 544] + 352]:
                                        if mem[_6556 + mem[_6556 + 544] + 352] < 7:
                                            revert with 0, 'Obi: Out of range'
                                        if 6 < mem[_6556 + mem[_6556 + 544] + 352]:
                                            if mem[_6556 + mem[_6556 + 544] + 352] < 8:
                                                revert with 0, 'Obi: Out of range'
                                            if 7 < mem[_6556 + mem[_6556 + 544] + 352]:
                                                return 0
            else:
                if bool(stor4.length) != 1:
                    mem[484] = uint64(stor5.field_0)
                    mem[516] = uint64(stor5.field_64)
                    require ext_code.size(stor1)
                    staticcall stor1.0x1102965c with:
                            gas gas_remaining wei
                           args mem[356 len -356]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    _6549 = mem[352 len 4], 0
                    require mem[352 len 4], 0 <= test266151307()
                    require return_data.size - mem[352 len 4], 0 >= 224
                    require bool(ceil32(return_data.size) + 576 <= test266151307())
                    mem[64] = ceil32(return_data.size) + 576
                    _6601 = mem[mem[352 len 4], 0 + 352]
                    require mem[mem[352 len 4], 0 + 352] <= test266151307()
                    require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                    _6626 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                    require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                    require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                    mem[ceil32(return_data.size) + 576] = _6626
                    require mem[352 len 4], 0 + _6601 + _6626 + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 608 len ceil32(_6626)] = mem[mem[352 len 4], 0 + _6601 + 384 len ceil32(_6626)]
                    if ceil32(_6626) <= _6626:
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_6549 + 384] == mem[_6549 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_6549 + 384]
                        require mem[_6549 + 416] == mem[_6549 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_6549 + 416]
                        require mem[_6549 + 448] == mem[_6549 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_6549 + 448]
                        require mem[_6549 + 480] == mem[_6549 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_6549 + 480]
                        require mem[_6549 + 512] == mem[_6549 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_6549 + 512]
                        _16751 = mem[_6549 + 544]
                        require mem[_6549 + 544] <= test266151307()
                        require _6549 + mem[_6549 + 544] + 383 < return_data.size + 352
                        _16775 = mem[_6549 + mem[_6549 + 544] + 352]
                        require mem[_6549 + mem[_6549 + 544] + 352] <= test266151307()
                        _16800 = mem[64]
                        require mem[64] + ceil32(mem[_6549 + mem[_6549 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6549 + mem[_6549 + 544] + 352]) + 32 >= mem[64]
                        mem[64] = mem[64] + ceil32(mem[_6549 + mem[_6549 + 544] + 352]) + 32
                        mem[_16800] = mem[_6549 + mem[_6549 + 544] + 352]
                        require _6549 + _16751 + _16775 + 32 <= return_data.size
                        mem[_16800 + 32 len ceil32(_16775)] = mem[_6549 + _16751 + 384 len ceil32(_16775)]
                        if ceil32(_16775) <= _16775:
                            mem[ceil32(return_data.size) + 544] = _16800
                            require '' == ''
                            _27002 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_27002] = 0
                            _27034 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27034] = 0
                            mem[_27034 + 32] = 96
                            _27088 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27088] = 0
                            mem[_27088 + 32] = 96
                            _27117 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27117] = 0
                            mem[_27117 + 32] = _16800
                            if mem[_16800] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_16800]:
                                mem[_27117] = 1
                                if mem[_16800] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_16800]:
                                    mem[_27117] = 2
                                    if mem[_16800] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_16800]:
                                        mem[_27117] = 3
                                        if mem[_16800] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_16800]:
                                            mem[_27117] = 4
                                            if mem[_16800] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_16800]:
                                                mem[_27117] = 5
                                                if mem[_16800] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_16800]:
                                                    mem[_27117] = 6
                                                    if mem[_16800] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_16800]:
                                                        mem[_27117] = 7
                                                        if mem[_16800] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_16800]:
                                                            return 0
                        else:
                            mem[_16800 + _16775 + 32] = 0
                            mem[ceil32(return_data.size) + 544] = _16800
                            require '' == ''
                            _27018 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_27018] = 0
                            _27050 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27050] = 0
                            mem[_27050 + 32] = 96
                            _27118 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27118] = 0
                            mem[_27118 + 32] = 96
                            _27139 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27139] = 0
                            mem[_27139 + 32] = _16800
                            if mem[_16800] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_16800]:
                                mem[_27139] = 1
                                if mem[_16800] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_16800]:
                                    mem[_27139] = 2
                                    if mem[_16800] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_16800]:
                                        mem[_27139] = 3
                                        if mem[_16800] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_16800]:
                                            mem[_27139] = 4
                                            if mem[_16800] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_16800]:
                                                mem[_27139] = 5
                                                if mem[_16800] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_16800]:
                                                    mem[_27139] = 6
                                                    if mem[_16800] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_16800]:
                                                        mem[_27139] = 7
                                                        if mem[_16800] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_16800]:
                                                            return 0
                    else:
                        mem[ceil32(return_data.size) + _6626 + 608] = 0
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_6549 + 384] == mem[_6549 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_6549 + 384]
                        require mem[_6549 + 416] == mem[_6549 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_6549 + 416]
                        require mem[_6549 + 448] == mem[_6549 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_6549 + 448]
                        require mem[_6549 + 480] == mem[_6549 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_6549 + 480]
                        require mem[_6549 + 512] == mem[_6549 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_6549 + 512]
                        _16760 = mem[_6549 + 544]
                        require mem[_6549 + 544] <= test266151307()
                        require _6549 + mem[_6549 + 544] + 383 < return_data.size + 352
                        _16786 = mem[_6549 + mem[_6549 + 544] + 352]
                        require mem[_6549 + mem[_6549 + 544] + 352] <= test266151307()
                        _16809 = mem[64]
                        require mem[64] + ceil32(mem[_6549 + mem[_6549 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6549 + mem[_6549 + 544] + 352]) + 32 >= mem[64]
                        mem[64] = mem[64] + ceil32(mem[_6549 + mem[_6549 + 544] + 352]) + 32
                        mem[_16809] = mem[_6549 + mem[_6549 + 544] + 352]
                        require _6549 + _16760 + _16786 + 32 <= return_data.size
                        mem[_16809 + 32 len ceil32(_16786)] = mem[_6549 + _16760 + 384 len ceil32(_16786)]
                        if ceil32(_16786) <= _16786:
                            mem[ceil32(return_data.size) + 544] = _16809
                            require '' == ''
                            _27003 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_27003] = 0
                            _27035 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27035] = 0
                            mem[_27035 + 32] = 96
                            _27089 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27089] = 0
                            mem[_27089 + 32] = 96
                            _27119 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27119] = 0
                            mem[_27119 + 32] = _16809
                            if mem[_16809] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_16809]:
                                mem[_27119] = 1
                                if mem[_16809] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_16809]:
                                    mem[_27119] = 2
                                    if mem[_16809] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_16809]:
                                        mem[_27119] = 3
                                        if mem[_16809] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_16809]:
                                            mem[_27119] = 4
                                            if mem[_16809] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_16809]:
                                                mem[_27119] = 5
                                                if mem[_16809] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_16809]:
                                                    mem[_27119] = 6
                                                    if mem[_16809] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_16809]:
                                                        mem[_27119] = 7
                                                        if mem[_16809] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_16809]:
                                                            return 0
                        else:
                            mem[_16809 + _16786 + 32] = 0
                            mem[ceil32(return_data.size) + 544] = _16809
                            require '' == ''
                            _27019 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_27019] = 0
                            _27051 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27051] = 0
                            mem[_27051 + 32] = 96
                            _27120 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27120] = 0
                            mem[_27120 + 32] = 96
                            _27140 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27140] = 0
                            mem[_27140 + 32] = _16809
                            if mem[_16809] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_16809]:
                                mem[_27140] = 1
                                if mem[_16809] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_16809]:
                                    mem[_27140] = 2
                                    if mem[_16809] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_16809]:
                                        mem[_27140] = 3
                                        if mem[_16809] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_16809]:
                                            mem[_27140] = 4
                                            if mem[_16809] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_16809]:
                                                mem[_27140] = 5
                                                if mem[_16809] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_16809]:
                                                    mem[_27140] = 6
                                                    if mem[_16809] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_16809]:
                                                        mem[_27140] = 7
                                                        if mem[_16809] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_16809]:
                                                            return 0
                else:
                    mem[612] = stor4.length.field_1
                    mem[0] = 4
                    idx = 0
                    s = 0
                    while idx < stor4.length.field_1:
                        mem[idx + 644] = stor4[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[484] = uint64(stor5.field_0)
                    mem[516] = uint64(stor5.field_64)
                    require ext_code.size(stor1)
                    staticcall stor1.0x1102965c with:
                            gas gas_remaining wei
                           args 32, 160, stor3, 224, uint64(stor5.field_0), uint64(stor5.field_64), stor2.length % 128, Mask(248, 8, stor2.length), 2 * Mask(256, -1, stor4.length.field_1), mem[644 len ceil32(stor4.length.field_1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    _16715 = mem[352 len 4], 0
                    require mem[352 len 4], 0 <= test266151307()
                    require return_data.size - mem[352 len 4], 0 >= 224
                    require bool(ceil32(return_data.size) + 576 <= test266151307())
                    mem[64] = ceil32(return_data.size) + 576
                    _16740 = mem[mem[352 len 4], 0 + 352]
                    require mem[mem[352 len 4], 0 + 352] <= test266151307()
                    require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                    _16744 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                    require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                    require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                    mem[ceil32(return_data.size) + 576] = _16744
                    require mem[352 len 4], 0 + _16740 + _16744 + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 608 len ceil32(_16744)] = mem[mem[352 len 4], 0 + _16740 + 384 len ceil32(_16744)]
                    if ceil32(_16744) <= _16744:
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_16715 + 384] == mem[_16715 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_16715 + 384]
                        require mem[_16715 + 416] == mem[_16715 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_16715 + 416]
                        require mem[_16715 + 448] == mem[_16715 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_16715 + 448]
                        require mem[_16715 + 480] == mem[_16715 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_16715 + 480]
                        require mem[_16715 + 512] == mem[_16715 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_16715 + 512]
                        _28141 = mem[_16715 + 544]
                        require mem[_16715 + 544] <= test266151307()
                        require _16715 + mem[_16715 + 544] + 383 < return_data.size + 352
                        _28403 = mem[_16715 + mem[_16715 + 544] + 352]
                        require mem[_16715 + mem[_16715 + 544] + 352] <= test266151307()
                        _28532 = mem[64]
                        require mem[64] + ceil32(mem[_16715 + mem[_16715 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16715 + mem[_16715 + 544] + 352]) + 32 >= mem[64]
                        mem[64] = mem[64] + ceil32(mem[_16715 + mem[_16715 + 544] + 352]) + 32
                        mem[_28532] = mem[_16715 + mem[_16715 + 544] + 352]
                        require _16715 + _28141 + _28403 + 32 <= return_data.size
                        mem[_28532 + 32 len ceil32(_28403)] = mem[_16715 + _28141 + 384 len ceil32(_28403)]
                        if ceil32(_28403) <= _28403:
                            mem[ceil32(return_data.size) + 544] = _28532
                            require '' == ''
                            _37057 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_37057] = 0
                            _37105 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37105] = 0
                            mem[_37105 + 32] = 96
                            _37164 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37164] = 0
                            mem[_37164 + 32] = 96
                            _37205 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37205] = 0
                            mem[_37205 + 32] = _28532
                            if mem[_28532] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_28532]:
                                mem[_37205] = 1
                                if mem[_28532] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_28532]:
                                    mem[_37205] = 2
                                    if mem[_28532] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_28532]:
                                        mem[_37205] = 3
                                        if mem[_28532] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_28532]:
                                            mem[_37205] = 4
                                            if mem[_28532] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_28532]:
                                                mem[_37205] = 5
                                                if mem[_28532] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_28532]:
                                                    mem[_37205] = 6
                                                    if mem[_28532] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_28532]:
                                                        mem[_37205] = 7
                                                        if mem[_28532] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_28532]:
                                                            return 0
                        else:
                            mem[_28532 + _28403 + 32] = 0
                            mem[ceil32(return_data.size) + 544] = _28532
                            require '' == ''
                            _37081 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_37081] = 0
                            _37129 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37129] = 0
                            mem[_37129 + 32] = 96
                            _37206 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37206] = 0
                            mem[_37206 + 32] = 96
                            _37237 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37237] = 0
                            mem[_37237 + 32] = _28532
                            if mem[_28532] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_28532]:
                                mem[_37237] = 1
                                if mem[_28532] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_28532]:
                                    mem[_37237] = 2
                                    if mem[_28532] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_28532]:
                                        mem[_37237] = 3
                                        if mem[_28532] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_28532]:
                                            mem[_37237] = 4
                                            if mem[_28532] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_28532]:
                                                mem[_37237] = 5
                                                if mem[_28532] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_28532]:
                                                    mem[_37237] = 6
                                                    if mem[_28532] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_28532]:
                                                        mem[_37237] = 7
                                                        if mem[_28532] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_28532]:
                                                            return 0
                    else:
                        mem[ceil32(return_data.size) + _16744 + 608] = 0
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_16715 + 384] == mem[_16715 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_16715 + 384]
                        require mem[_16715 + 416] == mem[_16715 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_16715 + 416]
                        require mem[_16715 + 448] == mem[_16715 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_16715 + 448]
                        require mem[_16715 + 480] == mem[_16715 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_16715 + 480]
                        require mem[_16715 + 512] == mem[_16715 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_16715 + 512]
                        _28196 = mem[_16715 + 544]
                        require mem[_16715 + 544] <= test266151307()
                        require _16715 + mem[_16715 + 544] + 383 < return_data.size + 352
                        _28483 = mem[_16715 + mem[_16715 + 544] + 352]
                        require mem[_16715 + mem[_16715 + 544] + 352] <= test266151307()
                        _28554 = mem[64]
                        require mem[64] + ceil32(mem[_16715 + mem[_16715 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16715 + mem[_16715 + 544] + 352]) + 32 >= mem[64]
                        mem[64] = mem[64] + ceil32(mem[_16715 + mem[_16715 + 544] + 352]) + 32
                        mem[_28554] = mem[_16715 + mem[_16715 + 544] + 352]
                        require _16715 + _28196 + _28483 + 32 <= return_data.size
                        mem[_28554 + 32 len ceil32(_28483)] = mem[_16715 + _28196 + 384 len ceil32(_28483)]
                        if ceil32(_28483) <= _28483:
                            mem[ceil32(return_data.size) + 544] = _28554
                            require '' == ''
                            _37058 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_37058] = 0
                            _37106 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37106] = 0
                            mem[_37106 + 32] = 96
                            _37165 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37165] = 0
                            mem[_37165 + 32] = 96
                            _37207 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37207] = 0
                            mem[_37207 + 32] = _28554
                            if mem[_28554] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_28554]:
                                mem[_37207] = 1
                                if mem[_28554] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_28554]:
                                    mem[_37207] = 2
                                    if mem[_28554] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_28554]:
                                        mem[_37207] = 3
                                        if mem[_28554] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_28554]:
                                            mem[_37207] = 4
                                            if mem[_28554] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_28554]:
                                                mem[_37207] = 5
                                                if mem[_28554] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_28554]:
                                                    mem[_37207] = 6
                                                    if mem[_28554] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_28554]:
                                                        mem[_37207] = 7
                                                        if mem[_28554] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_28554]:
                                                            return 0
                        else:
                            mem[_28554 + _28483 + 32] = 0
                            mem[ceil32(return_data.size) + 544] = _28554
                            require '' == ''
                            _37082 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_37082] = 0
                            _37130 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37130] = 0
                            mem[_37130 + 32] = 96
                            _37208 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37208] = 0
                            mem[_37208 + 32] = 96
                            _37238 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37238] = 0
                            mem[_37238 + 32] = _28554
                            if mem[_28554] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_28554]:
                                mem[_37238] = 1
                                if mem[_28554] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_28554]:
                                    mem[_37238] = 2
                                    if mem[_28554] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_28554]:
                                        mem[_37238] = 3
                                        if mem[_28554] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_28554]:
                                            mem[_37238] = 4
                                            if mem[_28554] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_28554]:
                                                mem[_37238] = 5
                                                if mem[_28554] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_28554]:
                                                    mem[_37238] = 6
                                                    if mem[_28554] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_28554]:
                                                        mem[_37238] = 7
                                                        if mem[_28554] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_28554]:
                                                            return 0
    else:
        stor4.length = Mask(255, 1, (256 * not bool(stor0[address(arg1)])) - 1 and uint256(stor0[address(arg1)])) + 1
        if Mask(255, 1, (256 * not bool(stor0[address(arg1)])) - 1 and uint256(stor0[address(arg1)])):
            mem[0] = sha3(address(arg1), 0)
            s = 0
            idx = 0
            while stor0[address(arg1)].length + 31 / 32 > idx:
                stor4[s].field_0 = uint256(stor0[address(arg1)][idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor0[address(arg1)].length + 31 / 32
            while stor4.length + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[352] = 0x1102965c00000000000000000000000000000000000000000000000000000000
            mem[356] = 32
            mem[388] = 160
            if bool(stor2.length):
                if bool(stor2.length) == 1:
                    mem[548] = stor2.length.field_1
                    mem[0] = 2
                    idx = 0
                    s = 0
                    while idx < stor2.length.field_1:
                        mem[idx + 580] = stor2[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[420] = stor3
                    mem[452] = ceil32(stor2.length.field_1) + 192
                    if not bool(stor4.length):
                        mem[ceil32(stor2.length.field_1) + 580] = stor4.length.field_1
                        mem[ceil32(stor2.length.field_1) + 612] = Mask(248, 8, stor4.length)
                        mem[484] = uint64(stor5.field_0)
                        mem[516] = uint64(stor5.field_64)
                        require ext_code.size(stor1)
                        staticcall stor1.0x1102965c with:
                                gas gas_remaining wei
                               args 32, 160, stor3, ceil32(stor2.length.field_1) + 192, uint64(stor5.field_0), uint64(stor5.field_64), 2 * Mask(256, -1, stor2.length.field_1), mem[580 len ceil32(stor2.length.field_1) + 32], Mask(248, 8, stor4.length)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        _28522 = mem[352 len 4], 0
                        require mem[352 len 4], 0 <= test266151307()
                        require return_data.size - mem[352 len 4], 0 >= 224
                        require bool(ceil32(return_data.size) + 576 <= test266151307())
                        mem[64] = ceil32(return_data.size) + 576
                        _28861 = mem[mem[352 len 4], 0 + 352]
                        require mem[mem[352 len 4], 0 + 352] <= test266151307()
                        require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                        _29119 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                        require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                        require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                        mem[ceil32(return_data.size) + 576] = _29119
                        require mem[352 len 4], 0 + _28861 + _29119 + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 608 len ceil32(_29119)] = mem[mem[352 len 4], 0 + _28861 + 384 len ceil32(_29119)]
                        if ceil32(_29119) > _29119:
                            mem[ceil32(return_data.size) + _29119 + 608] = 0
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_28522 + 384] == mem[_28522 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_28522 + 384]
                        require mem[_28522 + 416] == mem[_28522 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_28522 + 416]
                        require mem[_28522 + 448] == mem[_28522 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_28522 + 448]
                        require mem[_28522 + 480] == mem[_28522 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_28522 + 480]
                        require mem[_28522 + 512] == mem[_28522 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_28522 + 512]
                        require mem[_28522 + 544] <= test266151307()
                        require _28522 + mem[_28522 + 544] + 383 < return_data.size + 352
                        require mem[_28522 + mem[_28522 + 544] + 352] <= test266151307()
                        require mem[64] + ceil32(mem[_28522 + mem[_28522 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_28522 + mem[_28522 + 544] + 352]) + 32 >= mem[64]
                        require _28522 + mem[_28522 + 544] + mem[_28522 + mem[_28522 + 544] + 352] + 32 <= return_data.size
                        require '' == ''
                        if mem[_28522 + mem[_28522 + 544] + 352] < 1:
                            revert with 0, 'Obi: Out of range'
                        if 0 < mem[_28522 + mem[_28522 + 544] + 352]:
                            if mem[_28522 + mem[_28522 + 544] + 352] < 2:
                                revert with 0, 'Obi: Out of range'
                            if 1 < mem[_28522 + mem[_28522 + 544] + 352]:
                                if mem[_28522 + mem[_28522 + 544] + 352] < 3:
                                    revert with 0, 'Obi: Out of range'
                                if 2 < mem[_28522 + mem[_28522 + 544] + 352]:
                                    if mem[_28522 + mem[_28522 + 544] + 352] < 4:
                                        revert with 0, 'Obi: Out of range'
                                    if 3 < mem[_28522 + mem[_28522 + 544] + 352]:
                                        if mem[_28522 + mem[_28522 + 544] + 352] < 5:
                                            revert with 0, 'Obi: Out of range'
                                        if 4 < mem[_28522 + mem[_28522 + 544] + 352]:
                                            if mem[_28522 + mem[_28522 + 544] + 352] < 6:
                                                revert with 0, 'Obi: Out of range'
                                            if 5 < mem[_28522 + mem[_28522 + 544] + 352]:
                                                if mem[_28522 + mem[_28522 + 544] + 352] < 7:
                                                    revert with 0, 'Obi: Out of range'
                                                if 6 < mem[_28522 + mem[_28522 + 544] + 352]:
                                                    if mem[_28522 + mem[_28522 + 544] + 352] < 8:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 7 < mem[_28522 + mem[_28522 + 544] + 352]:
                                                        return 0
                    else:
                        if bool(stor4.length) != 1:
                            mem[484] = uint64(stor5.field_0)
                            mem[516] = uint64(stor5.field_64)
                            require ext_code.size(stor1)
                            staticcall stor1.0x1102965c with:
                                    gas gas_remaining wei
                                   args mem[356 len -356]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            _28513 = mem[352 len 4], 0
                            require mem[352 len 4], 0 <= test266151307()
                            require return_data.size - mem[352 len 4], 0 >= 224
                            require bool(ceil32(return_data.size) + 576 <= test266151307())
                            mem[64] = ceil32(return_data.size) + 576
                            _28796 = mem[mem[352 len 4], 0 + 352]
                            require mem[mem[352 len 4], 0 + 352] <= test266151307()
                            require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                            _29006 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                            require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                            require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                            mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                            mem[ceil32(return_data.size) + 576] = _29006
                            require mem[352 len 4], 0 + _28796 + _29006 + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 608 len ceil32(_29006)] = mem[mem[352 len 4], 0 + _28796 + 384 len ceil32(_29006)]
                            if ceil32(_29006) > _29006:
                                mem[ceil32(return_data.size) + _29006 + 608] = 0
                            mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                            require mem[_28513 + 384] == mem[_28513 + 408 len 8]
                            mem[ceil32(return_data.size) + 384] = mem[_28513 + 384]
                            require mem[_28513 + 416] == mem[_28513 + 440 len 8]
                            mem[ceil32(return_data.size) + 416] = mem[_28513 + 416]
                            require mem[_28513 + 448] == mem[_28513 + 472 len 8]
                            mem[ceil32(return_data.size) + 448] = mem[_28513 + 448]
                            require mem[_28513 + 480] == mem[_28513 + 504 len 8]
                            mem[ceil32(return_data.size) + 480] = mem[_28513 + 480]
                            require mem[_28513 + 512] == mem[_28513 + 543 len 1]
                            mem[ceil32(return_data.size) + 512] = mem[_28513 + 512]
                            require mem[_28513 + 544] <= test266151307()
                            require _28513 + mem[_28513 + 544] + 383 < return_data.size + 352
                            require mem[_28513 + mem[_28513 + 544] + 352] <= test266151307()
                            require mem[64] + ceil32(mem[_28513 + mem[_28513 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_28513 + mem[_28513 + 544] + 352]) + 32 >= mem[64]
                            require _28513 + mem[_28513 + 544] + mem[_28513 + mem[_28513 + 544] + 352] + 32 <= return_data.size
                            require '' == ''
                            if mem[_28513 + mem[_28513 + 544] + 352] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_28513 + mem[_28513 + 544] + 352]:
                                if mem[_28513 + mem[_28513 + 544] + 352] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_28513 + mem[_28513 + 544] + 352]:
                                    if mem[_28513 + mem[_28513 + 544] + 352] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_28513 + mem[_28513 + 544] + 352]:
                                        if mem[_28513 + mem[_28513 + 544] + 352] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_28513 + mem[_28513 + 544] + 352]:
                                            if mem[_28513 + mem[_28513 + 544] + 352] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_28513 + mem[_28513 + 544] + 352]:
                                                if mem[_28513 + mem[_28513 + 544] + 352] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_28513 + mem[_28513 + 544] + 352]:
                                                    if mem[_28513 + mem[_28513 + 544] + 352] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_28513 + mem[_28513 + 544] + 352]:
                                                        if mem[_28513 + mem[_28513 + 544] + 352] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_28513 + mem[_28513 + 544] + 352]:
                                                            return 0
                        else:
                            mem[ceil32(stor2.length.field_1) + 580] = stor4.length.field_1
                            mem[0] = 4
                            idx = 0
                            s = 0
                            while idx < stor4.length.field_1:
                                mem[ceil32(stor2.length.field_1) + idx + 612] = stor4[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[484] = uint64(stor5.field_0)
                            mem[516] = uint64(stor5.field_64)
                            require ext_code.size(stor1)
                            staticcall stor1.0x1102965c with:
                                    gas gas_remaining wei
                                   args 32, 160, stor3, ceil32(stor2.length.field_1) + 192, uint64(stor5.field_0), uint64(stor5.field_64), 2 * Mask(256, -1, stor2.length.field_1), mem[580 len ceil32(stor2.length.field_1) + ceil32(stor4.length.field_1) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            _37667 = mem[352 len 4], 0
                            require mem[352 len 4], 0 <= test266151307()
                            require return_data.size - mem[352 len 4], 0 >= 224
                            require bool(ceil32(return_data.size) + 576 <= test266151307())
                            mem[64] = ceil32(return_data.size) + 576
                            _38185 = mem[mem[352 len 4], 0 + 352]
                            require mem[mem[352 len 4], 0 + 352] <= test266151307()
                            require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                            _38534 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                            require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                            require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                            mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                            mem[ceil32(return_data.size) + 576] = _38534
                            require mem[352 len 4], 0 + _38185 + _38534 + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 608 len ceil32(_38534)] = mem[mem[352 len 4], 0 + _38185 + 384 len ceil32(_38534)]
                            if ceil32(_38534) > _38534:
                                mem[ceil32(return_data.size) + _38534 + 608] = 0
                            mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                            require mem[_37667 + 384] == mem[_37667 + 408 len 8]
                            mem[ceil32(return_data.size) + 384] = mem[_37667 + 384]
                            require mem[_37667 + 416] == mem[_37667 + 440 len 8]
                            mem[ceil32(return_data.size) + 416] = mem[_37667 + 416]
                            require mem[_37667 + 448] == mem[_37667 + 472 len 8]
                            mem[ceil32(return_data.size) + 448] = mem[_37667 + 448]
                            require mem[_37667 + 480] == mem[_37667 + 504 len 8]
                            mem[ceil32(return_data.size) + 480] = mem[_37667 + 480]
                            require mem[_37667 + 512] == mem[_37667 + 543 len 1]
                            mem[ceil32(return_data.size) + 512] = mem[_37667 + 512]
                            require mem[_37667 + 544] <= test266151307()
                            require _37667 + mem[_37667 + 544] + 383 < return_data.size + 352
                            require mem[_37667 + mem[_37667 + 544] + 352] <= test266151307()
                            require mem[64] + ceil32(mem[_37667 + mem[_37667 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_37667 + mem[_37667 + 544] + 352]) + 32 >= mem[64]
                            require _37667 + mem[_37667 + 544] + mem[_37667 + mem[_37667 + 544] + 352] + 32 <= return_data.size
                            require '' == ''
                            if mem[_37667 + mem[_37667 + 544] + 352] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_37667 + mem[_37667 + 544] + 352]:
                                if mem[_37667 + mem[_37667 + 544] + 352] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_37667 + mem[_37667 + 544] + 352]:
                                    if mem[_37667 + mem[_37667 + 544] + 352] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_37667 + mem[_37667 + 544] + 352]:
                                        if mem[_37667 + mem[_37667 + 544] + 352] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_37667 + mem[_37667 + 544] + 352]:
                                            if mem[_37667 + mem[_37667 + 544] + 352] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_37667 + mem[_37667 + 544] + 352]:
                                                if mem[_37667 + mem[_37667 + 544] + 352] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_37667 + mem[_37667 + 544] + 352]:
                                                    if mem[_37667 + mem[_37667 + 544] + 352] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_37667 + mem[_37667 + 544] + 352]:
                                                        if mem[_37667 + mem[_37667 + 544] + 352] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_37667 + mem[_37667 + 544] + 352]:
                                                            return 0
                else:
                    mem[420] = stor3
                    mem[452] = -388
                    if not bool(stor4.length):
                        mem[0] = stor4.length.field_1
                        mem[32] = Mask(248, 8, stor4.length)
                        mem[484] = uint64(stor5.field_0)
                        mem[516] = uint64(stor5.field_64)
                        require ext_code.size(stor1)
                        staticcall stor1.0x1102965c with:
                                gas gas_remaining wei
                               args mem[356 len -292]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        _16857 = mem[352 len 4], 0
                        require mem[352 len 4], 0 <= test266151307()
                        require return_data.size - mem[352 len 4], 0 >= 224
                        require bool(ceil32(return_data.size) + 576 <= test266151307())
                        mem[64] = ceil32(return_data.size) + 576
                        _16925 = mem[mem[352 len 4], 0 + 352]
                        require mem[mem[352 len 4], 0 + 352] <= test266151307()
                        require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                        _16943 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                        require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                        require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                        mem[ceil32(return_data.size) + 576] = _16943
                        require mem[352 len 4], 0 + _16925 + _16943 + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 608 len ceil32(_16943)] = mem[mem[352 len 4], 0 + _16925 + 384 len ceil32(_16943)]
                        if ceil32(_16943) > _16943:
                            mem[ceil32(return_data.size) + _16943 + 608] = 0
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_16857 + 384] == mem[_16857 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_16857 + 384]
                        require mem[_16857 + 416] == mem[_16857 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_16857 + 416]
                        require mem[_16857 + 448] == mem[_16857 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_16857 + 448]
                        require mem[_16857 + 480] == mem[_16857 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_16857 + 480]
                        require mem[_16857 + 512] == mem[_16857 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_16857 + 512]
                        require mem[_16857 + 544] <= test266151307()
                        require _16857 + mem[_16857 + 544] + 383 < return_data.size + 352
                        require mem[_16857 + mem[_16857 + 544] + 352] <= test266151307()
                        require mem[64] + ceil32(mem[_16857 + mem[_16857 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16857 + mem[_16857 + 544] + 352]) + 32 >= mem[64]
                        require _16857 + mem[_16857 + 544] + mem[_16857 + mem[_16857 + 544] + 352] + 32 <= return_data.size
                        require '' == ''
                        if mem[_16857 + mem[_16857 + 544] + 352] < 1:
                            revert with 0, 'Obi: Out of range'
                        if 0 < mem[_16857 + mem[_16857 + 544] + 352]:
                            if mem[_16857 + mem[_16857 + 544] + 352] < 2:
                                revert with 0, 'Obi: Out of range'
                            if 1 < mem[_16857 + mem[_16857 + 544] + 352]:
                                if mem[_16857 + mem[_16857 + 544] + 352] < 3:
                                    revert with 0, 'Obi: Out of range'
                                if 2 < mem[_16857 + mem[_16857 + 544] + 352]:
                                    if mem[_16857 + mem[_16857 + 544] + 352] < 4:
                                        revert with 0, 'Obi: Out of range'
                                    if 3 < mem[_16857 + mem[_16857 + 544] + 352]:
                                        if mem[_16857 + mem[_16857 + 544] + 352] < 5:
                                            revert with 0, 'Obi: Out of range'
                                        if 4 < mem[_16857 + mem[_16857 + 544] + 352]:
                                            if mem[_16857 + mem[_16857 + 544] + 352] < 6:
                                                revert with 0, 'Obi: Out of range'
                                            if 5 < mem[_16857 + mem[_16857 + 544] + 352]:
                                                if mem[_16857 + mem[_16857 + 544] + 352] < 7:
                                                    revert with 0, 'Obi: Out of range'
                                                if 6 < mem[_16857 + mem[_16857 + 544] + 352]:
                                                    if mem[_16857 + mem[_16857 + 544] + 352] < 8:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 7 < mem[_16857 + mem[_16857 + 544] + 352]:
                                                        return 0
                    else:
                        if bool(stor4.length) == 1:
                            mem[0] = 4
                            idx = 0
                            s = 0
                            while idx < stor4.length.field_1:
                                mem[idx + 32] = stor4[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[484] = uint64(stor5.field_0)
                            mem[516] = uint64(stor5.field_64)
                            require ext_code.size(stor1)
                            staticcall stor1.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len ceil32(stor4.length.field_1) + -mem[64] + 28]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _27274 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _27451 = mem[_27274]
                            require mem[_27274] <= test266151307()
                            require return_data.size - mem[_27274] >= 224
                            require bool(_27274 + ceil32(return_data.size) + 224 <= test266151307())
                            mem[64] = _27274 + ceil32(return_data.size) + 224
                            _27819 = mem[_27274 + _27451]
                            require mem[_27274 + _27451] <= test266151307()
                            require _27274 + _27451 + mem[_27274 + _27451] + 31 < _27274 + return_data.size
                            _28055 = mem[_27274 + _27451 + mem[_27274 + _27451]]
                            require mem[_27274 + _27451 + mem[_27274 + _27451]] <= test266151307()
                            require _27274 + ceil32(return_data.size) + ceil32(mem[_27274 + _27451 + mem[_27274 + _27451]]) + 256 <= test266151307() and ceil32(mem[_27274 + _27451 + mem[_27274 + _27451]]) + 256 >= 224
                            mem[64] = _27274 + ceil32(return_data.size) + ceil32(mem[_27274 + _27451 + mem[_27274 + _27451]]) + 256
                            mem[_27274 + ceil32(return_data.size) + 224] = _28055
                            require _27451 + _27819 + _28055 + 32 <= return_data.size
                            mem[_27274 + ceil32(return_data.size) + 256 len ceil32(_28055)] = mem[_27274 + _27451 + _27819 + 32 len ceil32(_28055)]
                            if ceil32(_28055) <= _28055:
                                mem[_27274 + ceil32(return_data.size)] = _27274 + ceil32(return_data.size) + 224
                                require mem[_27274 + _27451 + 32] == mem[_27274 + _27451 + 56 len 8]
                                mem[_27274 + ceil32(return_data.size) + 32] = mem[_27274 + _27451 + 32]
                                require mem[_27274 + _27451 + 64] == mem[_27274 + _27451 + 88 len 8]
                                mem[_27274 + ceil32(return_data.size) + 64] = mem[_27274 + _27451 + 64]
                                require mem[_27274 + _27451 + 96] == mem[_27274 + _27451 + 120 len 8]
                                mem[_27274 + ceil32(return_data.size) + 96] = mem[_27274 + _27451 + 96]
                                require mem[_27274 + _27451 + 128] == mem[_27274 + _27451 + 152 len 8]
                                mem[_27274 + ceil32(return_data.size) + 128] = mem[_27274 + _27451 + 128]
                                require mem[_27274 + _27451 + 160] == mem[_27274 + _27451 + 191 len 1]
                                mem[_27274 + ceil32(return_data.size) + 160] = mem[_27274 + _27451 + 160]
                                _38651 = mem[_27274 + _27451 + 192]
                                require mem[_27274 + _27451 + 192] <= test266151307()
                                require _27274 + _27451 + mem[_27274 + _27451 + 192] + 31 < _27274 + return_data.size
                                _39008 = mem[_27274 + _27451 + mem[_27274 + _27451 + 192]]
                                require mem[_27274 + _27451 + mem[_27274 + _27451 + 192]] <= test266151307()
                                _39176 = mem[64]
                                require mem[64] + ceil32(mem[_27274 + _27451 + mem[_27274 + _27451 + 192]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_27274 + _27451 + mem[_27274 + _27451 + 192]]) + 32 >= mem[64]
                                mem[64] = mem[64] + ceil32(mem[_27274 + _27451 + mem[_27274 + _27451 + 192]]) + 32
                                mem[_39176] = _39008
                                require _27451 + _38651 + _39008 + 32 <= return_data.size
                                mem[_39176 + 32 len ceil32(_39008)] = mem[_27274 + _27451 + _38651 + 32 len ceil32(_39008)]
                                if ceil32(_39008) > _39008:
                                    mem[_39176 + _39008 + 32] = 0
                                require mem[_27274 + 32] == mem[_27274 + 32]
                                if _39008 < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < _39008:
                                    if _39008 < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < _39008:
                                        if _39008 < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < _39008:
                                            if _39008 < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < _39008:
                                                if _39008 < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < _39008:
                                                    if _39008 < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < _39008:
                                                        if _39008 < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < _39008:
                                                            if _39008 < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < _39008:
                                                                return 0
                            else:
                                mem[_27274 + ceil32(return_data.size) + _28055 + 256] = 0
                                mem[_27274 + ceil32(return_data.size)] = _27274 + ceil32(return_data.size) + 224
                                require mem[_27274 + _27451 + 32] == mem[_27274 + _27451 + 56 len 8]
                                mem[_27274 + ceil32(return_data.size) + 32] = mem[_27274 + _27451 + 32]
                                require mem[_27274 + _27451 + 64] == mem[_27274 + _27451 + 88 len 8]
                                mem[_27274 + ceil32(return_data.size) + 64] = mem[_27274 + _27451 + 64]
                                require mem[_27274 + _27451 + 96] == mem[_27274 + _27451 + 120 len 8]
                                mem[_27274 + ceil32(return_data.size) + 96] = mem[_27274 + _27451 + 96]
                                require mem[_27274 + _27451 + 128] == mem[_27274 + _27451 + 152 len 8]
                                mem[_27274 + ceil32(return_data.size) + 128] = mem[_27274 + _27451 + 128]
                                require mem[_27274 + _27451 + 160] == mem[_27274 + _27451 + 191 len 1]
                                mem[_27274 + ceil32(return_data.size) + 160] = mem[_27274 + _27451 + 160]
                                _38719 = mem[_27274 + _27451 + 192]
                                require mem[_27274 + _27451 + 192] <= test266151307()
                                require _27274 + _27451 + mem[_27274 + _27451 + 192] + 31 < _27274 + return_data.size
                                _39116 = mem[_27274 + _27451 + mem[_27274 + _27451 + 192]]
                                require mem[_27274 + _27451 + mem[_27274 + _27451 + 192]] <= test266151307()
                                _39196 = mem[64]
                                require mem[64] + ceil32(mem[_27274 + _27451 + mem[_27274 + _27451 + 192]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_27274 + _27451 + mem[_27274 + _27451 + 192]]) + 32 >= mem[64]
                                mem[64] = mem[64] + ceil32(mem[_27274 + _27451 + mem[_27274 + _27451 + 192]]) + 32
                                mem[_39196] = _39116
                                require _27451 + _38719 + _39116 + 32 <= return_data.size
                                mem[_39196 + 32 len ceil32(_39116)] = mem[_27274 + _27451 + _38719 + 32 len ceil32(_39116)]
                                if ceil32(_39116) > _39116:
                                    mem[_39196 + _39116 + 32] = 0
                                require mem[_27274 + 32] == mem[_27274 + 32]
                                if _39116 < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < _39116:
                                    if _39116 < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < _39116:
                                        if _39116 < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < _39116:
                                            if _39116 < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < _39116:
                                                if _39116 < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < _39116:
                                                    if _39116 < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < _39116:
                                                        if _39116 < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < _39116:
                                                            if _39116 < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < _39116:
                                                                return 0
                        else:
                            mem[484] = uint64(stor5.field_0)
                            mem[516] = uint64(stor5.field_64)
                            require ext_code.size(stor1)
                            staticcall stor1.0x1102965c with:
                                    gas gas_remaining wei
                                   args mem[356 len -356]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            _16842 = mem[352 len 4], 0
                            require mem[352 len 4], 0 <= test266151307()
                            require return_data.size - mem[352 len 4], 0 >= 224
                            require bool(ceil32(return_data.size) + 576 <= test266151307())
                            mem[64] = ceil32(return_data.size) + 576
                            _16905 = mem[mem[352 len 4], 0 + 352]
                            require mem[mem[352 len 4], 0 + 352] <= test266151307()
                            require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                            _16939 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                            require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                            require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                            mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                            mem[ceil32(return_data.size) + 576] = _16939
                            require mem[352 len 4], 0 + _16905 + _16939 + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 608 len ceil32(_16939)] = mem[mem[352 len 4], 0 + _16905 + 384 len ceil32(_16939)]
                            if ceil32(_16939) <= _16939:
                                mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                                require mem[_16842 + 384] == mem[_16842 + 408 len 8]
                                mem[ceil32(return_data.size) + 384] = mem[_16842 + 384]
                                require mem[_16842 + 416] == mem[_16842 + 440 len 8]
                                mem[ceil32(return_data.size) + 416] = mem[_16842 + 416]
                                require mem[_16842 + 448] == mem[_16842 + 472 len 8]
                                mem[ceil32(return_data.size) + 448] = mem[_16842 + 448]
                                require mem[_16842 + 480] == mem[_16842 + 504 len 8]
                                mem[ceil32(return_data.size) + 480] = mem[_16842 + 480]
                                require mem[_16842 + 512] == mem[_16842 + 543 len 1]
                                mem[ceil32(return_data.size) + 512] = mem[_16842 + 512]
                                _28136 = mem[_16842 + 544]
                                require mem[_16842 + 544] <= test266151307()
                                require _16842 + mem[_16842 + 544] + 383 < return_data.size + 352
                                _28390 = mem[_16842 + mem[_16842 + 544] + 352]
                                require mem[_16842 + mem[_16842 + 544] + 352] <= test266151307()
                                _28531 = mem[64]
                                require mem[64] + ceil32(mem[_16842 + mem[_16842 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16842 + mem[_16842 + 544] + 352]) + 32 >= mem[64]
                                mem[64] = mem[64] + ceil32(mem[_16842 + mem[_16842 + 544] + 352]) + 32
                                mem[_28531] = mem[_16842 + mem[_16842 + 544] + 352]
                                require _16842 + _28136 + _28390 + 32 <= return_data.size
                                mem[_28531 + 32 len ceil32(_28390)] = mem[_16842 + _28136 + 384 len ceil32(_28390)]
                                if ceil32(_28390) <= _28390:
                                    mem[ceil32(return_data.size) + 544] = _28531
                                    require '' == ''
                                    _37055 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_37055] = 0
                                    _37103 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37103] = 0
                                    mem[_37103 + 32] = 96
                                    _37162 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37162] = 0
                                    mem[_37162 + 32] = 96
                                    _37201 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37201] = 0
                                    mem[_37201 + 32] = _28531
                                    if mem[_28531] < 1:
                                        revert with 0, 'Obi: Out of range'
                                    if 0 < mem[_28531]:
                                        mem[_37201] = 1
                                        if mem[_28531] < 2:
                                            revert with 0, 'Obi: Out of range'
                                        if 1 < mem[_28531]:
                                            mem[_37201] = 2
                                            if mem[_28531] < 3:
                                                revert with 0, 'Obi: Out of range'
                                            if 2 < mem[_28531]:
                                                mem[_37201] = 3
                                                if mem[_28531] < 4:
                                                    revert with 0, 'Obi: Out of range'
                                                if 3 < mem[_28531]:
                                                    mem[_37201] = 4
                                                    if mem[_28531] < 5:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 4 < mem[_28531]:
                                                        mem[_37201] = 5
                                                        if mem[_28531] < 6:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 5 < mem[_28531]:
                                                            mem[_37201] = 6
                                                            if mem[_28531] < 7:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 6 < mem[_28531]:
                                                                mem[_37201] = 7
                                                                if mem[_28531] < 8:
                                                                    revert with 0, 'Obi: Out of range'
                                                                if 7 < mem[_28531]:
                                                                    return 0
                                else:
                                    mem[_28531 + _28390 + 32] = 0
                                    mem[ceil32(return_data.size) + 544] = _28531
                                    require '' == ''
                                    _37079 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_37079] = 0
                                    _37127 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37127] = 0
                                    mem[_37127 + 32] = 96
                                    _37202 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37202] = 0
                                    mem[_37202 + 32] = 96
                                    _37235 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37235] = 0
                                    mem[_37235 + 32] = _28531
                                    if mem[_28531] < 1:
                                        revert with 0, 'Obi: Out of range'
                                    if 0 < mem[_28531]:
                                        mem[_37235] = 1
                                        if mem[_28531] < 2:
                                            revert with 0, 'Obi: Out of range'
                                        if 1 < mem[_28531]:
                                            mem[_37235] = 2
                                            if mem[_28531] < 3:
                                                revert with 0, 'Obi: Out of range'
                                            if 2 < mem[_28531]:
                                                mem[_37235] = 3
                                                if mem[_28531] < 4:
                                                    revert with 0, 'Obi: Out of range'
                                                if 3 < mem[_28531]:
                                                    mem[_37235] = 4
                                                    if mem[_28531] < 5:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 4 < mem[_28531]:
                                                        mem[_37235] = 5
                                                        if mem[_28531] < 6:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 5 < mem[_28531]:
                                                            mem[_37235] = 6
                                                            if mem[_28531] < 7:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 6 < mem[_28531]:
                                                                mem[_37235] = 7
                                                                if mem[_28531] < 8:
                                                                    revert with 0, 'Obi: Out of range'
                                                                if 7 < mem[_28531]:
                                                                    return 0
                            else:
                                mem[ceil32(return_data.size) + _16939 + 608] = 0
                                mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                                require mem[_16842 + 384] == mem[_16842 + 408 len 8]
                                mem[ceil32(return_data.size) + 384] = mem[_16842 + 384]
                                require mem[_16842 + 416] == mem[_16842 + 440 len 8]
                                mem[ceil32(return_data.size) + 416] = mem[_16842 + 416]
                                require mem[_16842 + 448] == mem[_16842 + 472 len 8]
                                mem[ceil32(return_data.size) + 448] = mem[_16842 + 448]
                                require mem[_16842 + 480] == mem[_16842 + 504 len 8]
                                mem[ceil32(return_data.size) + 480] = mem[_16842 + 480]
                                require mem[_16842 + 512] == mem[_16842 + 543 len 1]
                                mem[ceil32(return_data.size) + 512] = mem[_16842 + 512]
                                _28189 = mem[_16842 + 544]
                                require mem[_16842 + 544] <= test266151307()
                                require _16842 + mem[_16842 + 544] + 383 < return_data.size + 352
                                _28476 = mem[_16842 + mem[_16842 + 544] + 352]
                                require mem[_16842 + mem[_16842 + 544] + 352] <= test266151307()
                                _28551 = mem[64]
                                require mem[64] + ceil32(mem[_16842 + mem[_16842 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16842 + mem[_16842 + 544] + 352]) + 32 >= mem[64]
                                mem[64] = mem[64] + ceil32(mem[_16842 + mem[_16842 + 544] + 352]) + 32
                                mem[_28551] = mem[_16842 + mem[_16842 + 544] + 352]
                                require _16842 + _28189 + _28476 + 32 <= return_data.size
                                mem[_28551 + 32 len ceil32(_28476)] = mem[_16842 + _28189 + 384 len ceil32(_28476)]
                                if ceil32(_28476) <= _28476:
                                    mem[ceil32(return_data.size) + 544] = _28551
                                    require '' == ''
                                    _37056 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_37056] = 0
                                    _37104 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37104] = 0
                                    mem[_37104 + 32] = 96
                                    _37163 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37163] = 0
                                    mem[_37163 + 32] = 96
                                    _37203 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37203] = 0
                                    mem[_37203 + 32] = _28551
                                    if mem[_28551] < 1:
                                        revert with 0, 'Obi: Out of range'
                                    if 0 < mem[_28551]:
                                        mem[_37203] = 1
                                        if mem[_28551] < 2:
                                            revert with 0, 'Obi: Out of range'
                                        if 1 < mem[_28551]:
                                            mem[_37203] = 2
                                            if mem[_28551] < 3:
                                                revert with 0, 'Obi: Out of range'
                                            if 2 < mem[_28551]:
                                                mem[_37203] = 3
                                                if mem[_28551] < 4:
                                                    revert with 0, 'Obi: Out of range'
                                                if 3 < mem[_28551]:
                                                    mem[_37203] = 4
                                                    if mem[_28551] < 5:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 4 < mem[_28551]:
                                                        mem[_37203] = 5
                                                        if mem[_28551] < 6:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 5 < mem[_28551]:
                                                            mem[_37203] = 6
                                                            if mem[_28551] < 7:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 6 < mem[_28551]:
                                                                mem[_37203] = 7
                                                                if mem[_28551] < 8:
                                                                    revert with 0, 'Obi: Out of range'
                                                                if 7 < mem[_28551]:
                                                                    return 0
                                else:
                                    mem[_28551 + _28476 + 32] = 0
                                    mem[ceil32(return_data.size) + 544] = _28551
                                    require '' == ''
                                    _37080 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_37080] = 0
                                    _37128 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37128] = 0
                                    mem[_37128 + 32] = 96
                                    _37204 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37204] = 0
                                    mem[_37204 + 32] = 96
                                    _37236 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37236] = 0
                                    mem[_37236 + 32] = _28551
                                    if mem[_28551] < 1:
                                        revert with 0, 'Obi: Out of range'
                                    if 0 < mem[_28551]:
                                        mem[_37236] = 1
                                        if mem[_28551] < 2:
                                            revert with 0, 'Obi: Out of range'
                                        if 1 < mem[_28551]:
                                            mem[_37236] = 2
                                            if mem[_28551] < 3:
                                                revert with 0, 'Obi: Out of range'
                                            if 2 < mem[_28551]:
                                                mem[_37236] = 3
                                                if mem[_28551] < 4:
                                                    revert with 0, 'Obi: Out of range'
                                                if 3 < mem[_28551]:
                                                    mem[_37236] = 4
                                                    if mem[_28551] < 5:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 4 < mem[_28551]:
                                                        mem[_37236] = 5
                                                        if mem[_28551] < 6:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 5 < mem[_28551]:
                                                            mem[_37236] = 6
                                                            if mem[_28551] < 7:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 6 < mem[_28551]:
                                                                mem[_37236] = 7
                                                                if mem[_28551] < 8:
                                                                    revert with 0, 'Obi: Out of range'
                                                                if 7 < mem[_28551]:
                                                                    return 0
            else:
                mem[548] = stor2.length.field_1
                mem[580] = Mask(248, 8, stor2.length)
                mem[420] = stor3
                mem[452] = 224
                if bool(stor4.length):
                    if bool(stor4.length) == 1:
                        mem[612] = stor4.length.field_1
                        mem[0] = 4
                        idx = 0
                        s = 0
                        while idx < stor4.length.field_1:
                            mem[idx + 644] = stor4[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[484] = uint64(stor5.field_0)
                        mem[516] = uint64(stor5.field_64)
                        require ext_code.size(stor1)
                        staticcall stor1.0x1102965c with:
                                gas gas_remaining wei
                               args 32, 160, stor3, 224, uint64(stor5.field_0), uint64(stor5.field_64), stor2.length % 128, Mask(248, 8, stor2.length), 2 * Mask(256, -1, stor4.length.field_1), mem[644 len ceil32(stor4.length.field_1)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        _27450 = mem[352 len 4], 0
                        require mem[352 len 4], 0 <= test266151307()
                        require return_data.size - mem[352 len 4], 0 >= 224
                        require bool(ceil32(return_data.size) + 576 <= test266151307())
                        mem[64] = ceil32(return_data.size) + 576
                        _27818 = mem[mem[352 len 4], 0 + 352]
                        require mem[mem[352 len 4], 0 + 352] <= test266151307()
                        require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                        _28054 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                        require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                        require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                        mem[ceil32(return_data.size) + 576] = _28054
                        require mem[352 len 4], 0 + _27818 + _28054 + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 608 len ceil32(_28054)] = mem[mem[352 len 4], 0 + _27818 + 384 len ceil32(_28054)]
                        if ceil32(_28054) > _28054:
                            mem[ceil32(return_data.size) + _28054 + 608] = 0
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_27450 + 384] == mem[_27450 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_27450 + 384]
                        require mem[_27450 + 416] == mem[_27450 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_27450 + 416]
                        require mem[_27450 + 448] == mem[_27450 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_27450 + 448]
                        require mem[_27450 + 480] == mem[_27450 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_27450 + 480]
                        require mem[_27450 + 512] == mem[_27450 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_27450 + 512]
                        require mem[_27450 + 544] <= test266151307()
                        require _27450 + mem[_27450 + 544] + 383 < return_data.size + 352
                        require mem[_27450 + mem[_27450 + 544] + 352] <= test266151307()
                        require mem[64] + ceil32(mem[_27450 + mem[_27450 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_27450 + mem[_27450 + 544] + 352]) + 32 >= mem[64]
                        require _27450 + mem[_27450 + 544] + mem[_27450 + mem[_27450 + 544] + 352] + 32 <= return_data.size
                        require '' == ''
                        if mem[_27450 + mem[_27450 + 544] + 352] < 1:
                            revert with 0, 'Obi: Out of range'
                        if 0 < mem[_27450 + mem[_27450 + 544] + 352]:
                            if mem[_27450 + mem[_27450 + 544] + 352] < 2:
                                revert with 0, 'Obi: Out of range'
                            if 1 < mem[_27450 + mem[_27450 + 544] + 352]:
                                if mem[_27450 + mem[_27450 + 544] + 352] < 3:
                                    revert with 0, 'Obi: Out of range'
                                if 2 < mem[_27450 + mem[_27450 + 544] + 352]:
                                    if mem[_27450 + mem[_27450 + 544] + 352] < 4:
                                        revert with 0, 'Obi: Out of range'
                                    if 3 < mem[_27450 + mem[_27450 + 544] + 352]:
                                        if mem[_27450 + mem[_27450 + 544] + 352] < 5:
                                            revert with 0, 'Obi: Out of range'
                                        if 4 < mem[_27450 + mem[_27450 + 544] + 352]:
                                            if mem[_27450 + mem[_27450 + 544] + 352] < 6:
                                                revert with 0, 'Obi: Out of range'
                                            if 5 < mem[_27450 + mem[_27450 + 544] + 352]:
                                                if mem[_27450 + mem[_27450 + 544] + 352] < 7:
                                                    revert with 0, 'Obi: Out of range'
                                                if 6 < mem[_27450 + mem[_27450 + 544] + 352]:
                                                    if mem[_27450 + mem[_27450 + 544] + 352] < 8:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 7 < mem[_27450 + mem[_27450 + 544] + 352]:
                                                        return 0
                    else:
                        mem[484] = uint64(stor5.field_0)
                        mem[516] = uint64(stor5.field_64)
                        require ext_code.size(stor1)
                        staticcall stor1.0x1102965c with:
                                gas gas_remaining wei
                               args mem[356 len -356]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        _16856 = mem[352 len 4], 0
                        require mem[352 len 4], 0 <= test266151307()
                        require return_data.size - mem[352 len 4], 0 >= 224
                        require bool(ceil32(return_data.size) + 576 <= test266151307())
                        mem[64] = ceil32(return_data.size) + 576
                        _16923 = mem[mem[352 len 4], 0 + 352]
                        require mem[mem[352 len 4], 0 + 352] <= test266151307()
                        require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                        _16940 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                        require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                        require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                        mem[ceil32(return_data.size) + 576] = _16940
                        require mem[352 len 4], 0 + _16923 + _16940 + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 608 len ceil32(_16940)] = mem[mem[352 len 4], 0 + _16923 + 384 len ceil32(_16940)]
                        if ceil32(_16940) <= _16940:
                            mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                            require mem[_16856 + 384] == mem[_16856 + 408 len 8]
                            mem[ceil32(return_data.size) + 384] = mem[_16856 + 384]
                            require mem[_16856 + 416] == mem[_16856 + 440 len 8]
                            mem[ceil32(return_data.size) + 416] = mem[_16856 + 416]
                            require mem[_16856 + 448] == mem[_16856 + 472 len 8]
                            mem[ceil32(return_data.size) + 448] = mem[_16856 + 448]
                            require mem[_16856 + 480] == mem[_16856 + 504 len 8]
                            mem[ceil32(return_data.size) + 480] = mem[_16856 + 480]
                            require mem[_16856 + 512] == mem[_16856 + 543 len 1]
                            mem[ceil32(return_data.size) + 512] = mem[_16856 + 512]
                            _28134 = mem[_16856 + 544]
                            require mem[_16856 + 544] <= test266151307()
                            require _16856 + mem[_16856 + 544] + 383 < return_data.size + 352
                            _28386 = mem[_16856 + mem[_16856 + 544] + 352]
                            require mem[_16856 + mem[_16856 + 544] + 352] <= test266151307()
                            _28528 = mem[64]
                            require mem[64] + ceil32(mem[_16856 + mem[_16856 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16856 + mem[_16856 + 544] + 352]) + 32 >= mem[64]
                            mem[64] = mem[64] + ceil32(mem[_16856 + mem[_16856 + 544] + 352]) + 32
                            mem[_28528] = mem[_16856 + mem[_16856 + 544] + 352]
                            require _16856 + _28134 + _28386 + 32 <= return_data.size
                            mem[_28528 + 32 len ceil32(_28386)] = mem[_16856 + _28134 + 384 len ceil32(_28386)]
                            if ceil32(_28386) <= _28386:
                                mem[ceil32(return_data.size) + 544] = _28528
                                require '' == ''
                                _37051 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_37051] = 0
                                _37099 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_37099] = 0
                                mem[_37099 + 32] = 96
                                _37155 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_37155] = 0
                                mem[_37155 + 32] = 96
                                _37193 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_37193] = 0
                                mem[_37193 + 32] = _28528
                                if mem[_28528] < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < mem[_28528]:
                                    mem[_37193] = 1
                                    if mem[_28528] < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < mem[_28528]:
                                        mem[_37193] = 2
                                        if mem[_28528] < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < mem[_28528]:
                                            mem[_37193] = 3
                                            if mem[_28528] < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < mem[_28528]:
                                                mem[_37193] = 4
                                                if mem[_28528] < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < mem[_28528]:
                                                    mem[_37193] = 5
                                                    if mem[_28528] < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < mem[_28528]:
                                                        mem[_37193] = 6
                                                        if mem[_28528] < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < mem[_28528]:
                                                            mem[_37193] = 7
                                                            if mem[_28528] < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < mem[_28528]:
                                                                return 0
                            else:
                                mem[_28528 + _28386 + 32] = 0
                                mem[ceil32(return_data.size) + 544] = _28528
                                require '' == ''
                                _37075 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_37075] = 0
                                _37123 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_37123] = 0
                                mem[_37123 + 32] = 96
                                _37194 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_37194] = 0
                                mem[_37194 + 32] = 96
                                _37231 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_37231] = 0
                                mem[_37231 + 32] = _28528
                                if mem[_28528] < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < mem[_28528]:
                                    mem[_37231] = 1
                                    if mem[_28528] < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < mem[_28528]:
                                        mem[_37231] = 2
                                        if mem[_28528] < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < mem[_28528]:
                                            mem[_37231] = 3
                                            if mem[_28528] < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < mem[_28528]:
                                                mem[_37231] = 4
                                                if mem[_28528] < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < mem[_28528]:
                                                    mem[_37231] = 5
                                                    if mem[_28528] < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < mem[_28528]:
                                                        mem[_37231] = 6
                                                        if mem[_28528] < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < mem[_28528]:
                                                            mem[_37231] = 7
                                                            if mem[_28528] < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < mem[_28528]:
                                                                return 0
                        else:
                            mem[ceil32(return_data.size) + _16940 + 608] = 0
                            mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                            require mem[_16856 + 384] == mem[_16856 + 408 len 8]
                            mem[ceil32(return_data.size) + 384] = mem[_16856 + 384]
                            require mem[_16856 + 416] == mem[_16856 + 440 len 8]
                            mem[ceil32(return_data.size) + 416] = mem[_16856 + 416]
                            require mem[_16856 + 448] == mem[_16856 + 472 len 8]
                            mem[ceil32(return_data.size) + 448] = mem[_16856 + 448]
                            require mem[_16856 + 480] == mem[_16856 + 504 len 8]
                            mem[ceil32(return_data.size) + 480] = mem[_16856 + 480]
                            require mem[_16856 + 512] == mem[_16856 + 543 len 1]
                            mem[ceil32(return_data.size) + 512] = mem[_16856 + 512]
                            _28186 = mem[_16856 + 544]
                            require mem[_16856 + 544] <= test266151307()
                            require _16856 + mem[_16856 + 544] + 383 < return_data.size + 352
                            _28473 = mem[_16856 + mem[_16856 + 544] + 352]
                            require mem[_16856 + mem[_16856 + 544] + 352] <= test266151307()
                            _28549 = mem[64]
                            require mem[64] + ceil32(mem[_16856 + mem[_16856 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16856 + mem[_16856 + 544] + 352]) + 32 >= mem[64]
                            mem[64] = mem[64] + ceil32(mem[_16856 + mem[_16856 + 544] + 352]) + 32
                            mem[_28549] = mem[_16856 + mem[_16856 + 544] + 352]
                            require _16856 + _28186 + _28473 + 32 <= return_data.size
                            mem[_28549 + 32 len ceil32(_28473)] = mem[_16856 + _28186 + 384 len ceil32(_28473)]
                            if ceil32(_28473) <= _28473:
                                mem[ceil32(return_data.size) + 544] = _28549
                                require '' == ''
                                _37052 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_37052] = 0
                                _37100 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_37100] = 0
                                mem[_37100 + 32] = 96
                                _37156 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_37156] = 0
                                mem[_37156 + 32] = 96
                                _37195 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_37195] = 0
                                mem[_37195 + 32] = _28549
                                if mem[_28549] < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < mem[_28549]:
                                    mem[_37195] = 1
                                    if mem[_28549] < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < mem[_28549]:
                                        mem[_37195] = 2
                                        if mem[_28549] < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < mem[_28549]:
                                            mem[_37195] = 3
                                            if mem[_28549] < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < mem[_28549]:
                                                mem[_37195] = 4
                                                if mem[_28549] < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < mem[_28549]:
                                                    mem[_37195] = 5
                                                    if mem[_28549] < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < mem[_28549]:
                                                        mem[_37195] = 6
                                                        if mem[_28549] < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < mem[_28549]:
                                                            mem[_37195] = 7
                                                            if mem[_28549] < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < mem[_28549]:
                                                                return 0
                            else:
                                mem[_28549 + _28473 + 32] = 0
                                mem[ceil32(return_data.size) + 544] = _28549
                                require '' == ''
                                _37076 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_37076] = 0
                                _37124 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_37124] = 0
                                mem[_37124 + 32] = 96
                                _37196 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_37196] = 0
                                mem[_37196 + 32] = 96
                                _37232 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_37232] = 0
                                mem[_37232 + 32] = _28549
                                if mem[_28549] < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < mem[_28549]:
                                    mem[_37232] = 1
                                    if mem[_28549] < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < mem[_28549]:
                                        mem[_37232] = 2
                                        if mem[_28549] < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < mem[_28549]:
                                            mem[_37232] = 3
                                            if mem[_28549] < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < mem[_28549]:
                                                mem[_37232] = 4
                                                if mem[_28549] < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < mem[_28549]:
                                                    mem[_37232] = 5
                                                    if mem[_28549] < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < mem[_28549]:
                                                        mem[_37232] = 6
                                                        if mem[_28549] < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < mem[_28549]:
                                                            mem[_37232] = 7
                                                            if mem[_28549] < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < mem[_28549]:
                                                                return 0
                else:
                    mem[612] = stor4.length.field_1
                    mem[644] = Mask(248, 8, stor4.length)
                    mem[484] = uint64(stor5.field_0)
                    mem[516] = uint64(stor5.field_64)
                    require ext_code.size(stor1)
                    staticcall stor1.0x1102965c with:
                            gas gas_remaining wei
                           args 32, 160, stor3, 224, uint64(stor5.field_0), uint64(stor5.field_64), stor2.length % 128, Mask(248, 8, stor2.length), stor4.length % 128, Mask(248, 8, stor4.length)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    _16867 = mem[352 len 4], 0
                    require mem[352 len 4], 0 <= test266151307()
                    require return_data.size - mem[352 len 4], 0 >= 224
                    require bool(ceil32(return_data.size) + 576 <= test266151307())
                    mem[64] = ceil32(return_data.size) + 576
                    _16935 = mem[mem[352 len 4], 0 + 352]
                    require mem[mem[352 len 4], 0 + 352] <= test266151307()
                    require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                    _16947 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                    require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                    require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                    mem[ceil32(return_data.size) + 576] = _16947
                    require mem[352 len 4], 0 + _16935 + _16947 + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 608 len ceil32(_16947)] = mem[mem[352 len 4], 0 + _16935 + 384 len ceil32(_16947)]
                    if ceil32(_16947) <= _16947:
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_16867 + 384] == mem[_16867 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_16867 + 384]
                        require mem[_16867 + 416] == mem[_16867 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_16867 + 416]
                        require mem[_16867 + 448] == mem[_16867 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_16867 + 448]
                        require mem[_16867 + 480] == mem[_16867 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_16867 + 480]
                        require mem[_16867 + 512] == mem[_16867 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_16867 + 512]
                        _28133 = mem[_16867 + 544]
                        require mem[_16867 + 544] <= test266151307()
                        require _16867 + mem[_16867 + 544] + 383 < return_data.size + 352
                        _28384 = mem[_16867 + mem[_16867 + 544] + 352]
                        require mem[_16867 + mem[_16867 + 544] + 352] <= test266151307()
                        _28527 = mem[64]
                        require mem[64] + ceil32(mem[_16867 + mem[_16867 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16867 + mem[_16867 + 544] + 352]) + 32 >= mem[64]
                        mem[64] = mem[64] + ceil32(mem[_16867 + mem[_16867 + 544] + 352]) + 32
                        mem[_28527] = mem[_16867 + mem[_16867 + 544] + 352]
                        require _16867 + _28133 + _28384 + 32 <= return_data.size
                        mem[_28527 + 32 len ceil32(_28384)] = mem[_16867 + _28133 + 384 len ceil32(_28384)]
                        if ceil32(_28384) <= _28384:
                            mem[ceil32(return_data.size) + 544] = _28527
                            require '' == ''
                            _37049 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_37049] = 0
                            _37097 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37097] = 0
                            mem[_37097 + 32] = 96
                            _37152 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37152] = 0
                            mem[_37152 + 32] = 96
                            _37189 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37189] = 0
                            mem[_37189 + 32] = _28527
                            if mem[_28527] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_28527]:
                                mem[_37189] = 1
                                if mem[_28527] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_28527]:
                                    mem[_37189] = 2
                                    if mem[_28527] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_28527]:
                                        mem[_37189] = 3
                                        if mem[_28527] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_28527]:
                                            mem[_37189] = 4
                                            if mem[_28527] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_28527]:
                                                mem[_37189] = 5
                                                if mem[_28527] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_28527]:
                                                    mem[_37189] = 6
                                                    if mem[_28527] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_28527]:
                                                        mem[_37189] = 7
                                                        if mem[_28527] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_28527]:
                                                            return 0
                        else:
                            mem[_28527 + _28384 + 32] = 0
                            mem[ceil32(return_data.size) + 544] = _28527
                            require '' == ''
                            _37073 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_37073] = 0
                            _37121 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37121] = 0
                            mem[_37121 + 32] = 96
                            _37190 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37190] = 0
                            mem[_37190 + 32] = 96
                            _37229 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37229] = 0
                            mem[_37229 + 32] = _28527
                            if mem[_28527] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_28527]:
                                mem[_37229] = 1
                                if mem[_28527] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_28527]:
                                    mem[_37229] = 2
                                    if mem[_28527] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_28527]:
                                        mem[_37229] = 3
                                        if mem[_28527] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_28527]:
                                            mem[_37229] = 4
                                            if mem[_28527] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_28527]:
                                                mem[_37229] = 5
                                                if mem[_28527] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_28527]:
                                                    mem[_37229] = 6
                                                    if mem[_28527] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_28527]:
                                                        mem[_37229] = 7
                                                        if mem[_28527] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_28527]:
                                                            return 0
                    else:
                        mem[ceil32(return_data.size) + _16947 + 608] = 0
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_16867 + 384] == mem[_16867 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_16867 + 384]
                        require mem[_16867 + 416] == mem[_16867 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_16867 + 416]
                        require mem[_16867 + 448] == mem[_16867 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_16867 + 448]
                        require mem[_16867 + 480] == mem[_16867 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_16867 + 480]
                        require mem[_16867 + 512] == mem[_16867 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_16867 + 512]
                        _28185 = mem[_16867 + 544]
                        require mem[_16867 + 544] <= test266151307()
                        require _16867 + mem[_16867 + 544] + 383 < return_data.size + 352
                        _28472 = mem[_16867 + mem[_16867 + 544] + 352]
                        require mem[_16867 + mem[_16867 + 544] + 352] <= test266151307()
                        _28548 = mem[64]
                        require mem[64] + ceil32(mem[_16867 + mem[_16867 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16867 + mem[_16867 + 544] + 352]) + 32 >= mem[64]
                        mem[64] = mem[64] + ceil32(mem[_16867 + mem[_16867 + 544] + 352]) + 32
                        mem[_28548] = mem[_16867 + mem[_16867 + 544] + 352]
                        require _16867 + _28185 + _28472 + 32 <= return_data.size
                        mem[_28548 + 32 len ceil32(_28472)] = mem[_16867 + _28185 + 384 len ceil32(_28472)]
                        if ceil32(_28472) <= _28472:
                            mem[ceil32(return_data.size) + 544] = _28548
                            require '' == ''
                            _37050 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_37050] = 0
                            _37098 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37098] = 0
                            mem[_37098 + 32] = 96
                            _37153 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37153] = 0
                            mem[_37153 + 32] = 96
                            _37191 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37191] = 0
                            mem[_37191 + 32] = _28548
                            if mem[_28548] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_28548]:
                                mem[_37191] = 1
                                if mem[_28548] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_28548]:
                                    mem[_37191] = 2
                                    if mem[_28548] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_28548]:
                                        mem[_37191] = 3
                                        if mem[_28548] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_28548]:
                                            mem[_37191] = 4
                                            if mem[_28548] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_28548]:
                                                mem[_37191] = 5
                                                if mem[_28548] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_28548]:
                                                    mem[_37191] = 6
                                                    if mem[_28548] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_28548]:
                                                        mem[_37191] = 7
                                                        if mem[_28548] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_28548]:
                                                            return 0
                        else:
                            mem[_28548 + _28472 + 32] = 0
                            mem[ceil32(return_data.size) + 544] = _28548
                            require '' == ''
                            _37074 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_37074] = 0
                            _37122 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37122] = 0
                            mem[_37122 + 32] = 96
                            _37192 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37192] = 0
                            mem[_37192 + 32] = 96
                            _37230 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_37230] = 0
                            mem[_37230 + 32] = _28548
                            if mem[_28548] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_28548]:
                                mem[_37230] = 1
                                if mem[_28548] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_28548]:
                                    mem[_37230] = 2
                                    if mem[_28548] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_28548]:
                                        mem[_37230] = 3
                                        if mem[_28548] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_28548]:
                                            mem[_37230] = 4
                                            if mem[_28548] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_28548]:
                                                mem[_37230] = 5
                                                if mem[_28548] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_28548]:
                                                    mem[_37230] = 6
                                                    if mem[_28548] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_28548]:
                                                        mem[_37230] = 7
                                                        if mem[_28548] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_28548]:
                                                            return 0
        else:
            idx = 0
            while stor4.length + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[352] = 0x1102965c00000000000000000000000000000000000000000000000000000000
            mem[356] = 32
            mem[388] = 160
            if not bool(stor2.length):
                mem[548] = stor2.length.field_1
                mem[580] = Mask(248, 8, stor2.length)
                mem[420] = stor3
                mem[452] = 224
                if bool(stor4.length):
                    if bool(stor4.length) == 1:
                        mem[612] = stor4.length.field_1
                        mem[0] = 4
                        idx = 0
                        s = 0
                        while idx < stor4.length.field_1:
                            mem[idx + 644] = stor4[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[484] = uint64(stor5.field_0)
                        mem[516] = uint64(stor5.field_64)
                        require ext_code.size(stor1)
                        staticcall stor1.0x1102965c with:
                                gas gas_remaining wei
                               args 32, 160, stor3, 224, uint64(stor5.field_0), uint64(stor5.field_64), stor2.length % 128, Mask(248, 8, stor2.length), 2 * Mask(256, -1, stor4.length.field_1), mem[644 len ceil32(stor4.length.field_1)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        _16713 = mem[352 len 4], 0
                        require mem[352 len 4], 0 <= test266151307()
                        require return_data.size - mem[352 len 4], 0 >= 224
                        require bool(ceil32(return_data.size) + 576 <= test266151307())
                        mem[64] = ceil32(return_data.size) + 576
                        _16738 = mem[mem[352 len 4], 0 + 352]
                        require mem[mem[352 len 4], 0 + 352] <= test266151307()
                        require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                        _16742 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                        require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                        require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                        mem[ceil32(return_data.size) + 576] = _16742
                        require mem[352 len 4], 0 + _16738 + _16742 + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 608 len ceil32(_16742)] = mem[mem[352 len 4], 0 + _16738 + 384 len ceil32(_16742)]
                        if ceil32(_16742) > _16742:
                            mem[ceil32(return_data.size) + _16742 + 608] = 0
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_16713 + 384] == mem[_16713 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_16713 + 384]
                        require mem[_16713 + 416] == mem[_16713 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_16713 + 416]
                        require mem[_16713 + 448] == mem[_16713 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_16713 + 448]
                        require mem[_16713 + 480] == mem[_16713 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_16713 + 480]
                        require mem[_16713 + 512] == mem[_16713 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_16713 + 512]
                        require mem[_16713 + 544] <= test266151307()
                        require _16713 + mem[_16713 + 544] + 383 < return_data.size + 352
                        require mem[_16713 + mem[_16713 + 544] + 352] <= test266151307()
                        require mem[64] + ceil32(mem[_16713 + mem[_16713 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16713 + mem[_16713 + 544] + 352]) + 32 >= mem[64]
                        require _16713 + mem[_16713 + 544] + mem[_16713 + mem[_16713 + 544] + 352] + 32 <= return_data.size
                        require '' == ''
                        if mem[_16713 + mem[_16713 + 544] + 352] < 1:
                            revert with 0, 'Obi: Out of range'
                        if 0 < mem[_16713 + mem[_16713 + 544] + 352]:
                            if mem[_16713 + mem[_16713 + 544] + 352] < 2:
                                revert with 0, 'Obi: Out of range'
                            if 1 < mem[_16713 + mem[_16713 + 544] + 352]:
                                if mem[_16713 + mem[_16713 + 544] + 352] < 3:
                                    revert with 0, 'Obi: Out of range'
                                if 2 < mem[_16713 + mem[_16713 + 544] + 352]:
                                    if mem[_16713 + mem[_16713 + 544] + 352] < 4:
                                        revert with 0, 'Obi: Out of range'
                                    if 3 < mem[_16713 + mem[_16713 + 544] + 352]:
                                        if mem[_16713 + mem[_16713 + 544] + 352] < 5:
                                            revert with 0, 'Obi: Out of range'
                                        if 4 < mem[_16713 + mem[_16713 + 544] + 352]:
                                            if mem[_16713 + mem[_16713 + 544] + 352] < 6:
                                                revert with 0, 'Obi: Out of range'
                                            if 5 < mem[_16713 + mem[_16713 + 544] + 352]:
                                                if mem[_16713 + mem[_16713 + 544] + 352] < 7:
                                                    revert with 0, 'Obi: Out of range'
                                                if 6 < mem[_16713 + mem[_16713 + 544] + 352]:
                                                    if mem[_16713 + mem[_16713 + 544] + 352] < 8:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 7 < mem[_16713 + mem[_16713 + 544] + 352]:
                                                        return 0
                    else:
                        mem[484] = uint64(stor5.field_0)
                        mem[516] = uint64(stor5.field_64)
                        require ext_code.size(stor1)
                        staticcall stor1.0x1102965c with:
                                gas gas_remaining wei
                               args mem[356 len -356]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        _6545 = mem[352 len 4], 0
                        require mem[352 len 4], 0 <= test266151307()
                        require return_data.size - mem[352 len 4], 0 >= 224
                        require bool(ceil32(return_data.size) + 576 <= test266151307())
                        mem[64] = ceil32(return_data.size) + 576
                        _6595 = mem[mem[352 len 4], 0 + 352]
                        require mem[mem[352 len 4], 0 + 352] <= test266151307()
                        require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                        _6617 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                        require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                        require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                        mem[ceil32(return_data.size) + 576] = _6617
                        require mem[352 len 4], 0 + _6595 + _6617 + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 608 len ceil32(_6617)] = mem[mem[352 len 4], 0 + _6595 + 384 len ceil32(_6617)]
                        if ceil32(_6617) <= _6617:
                            mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                            require mem[_6545 + 384] == mem[_6545 + 408 len 8]
                            mem[ceil32(return_data.size) + 384] = mem[_6545 + 384]
                            require mem[_6545 + 416] == mem[_6545 + 440 len 8]
                            mem[ceil32(return_data.size) + 416] = mem[_6545 + 416]
                            require mem[_6545 + 448] == mem[_6545 + 472 len 8]
                            mem[ceil32(return_data.size) + 448] = mem[_6545 + 448]
                            require mem[_6545 + 480] == mem[_6545 + 504 len 8]
                            mem[ceil32(return_data.size) + 480] = mem[_6545 + 480]
                            require mem[_6545 + 512] == mem[_6545 + 543 len 1]
                            mem[ceil32(return_data.size) + 512] = mem[_6545 + 512]
                            _16747 = mem[_6545 + 544]
                            require mem[_6545 + 544] <= test266151307()
                            require _6545 + mem[_6545 + 544] + 383 < return_data.size + 352
                            _16768 = mem[_6545 + mem[_6545 + 544] + 352]
                            require mem[_6545 + mem[_6545 + 544] + 352] <= test266151307()
                            _16795 = mem[64]
                            require mem[64] + ceil32(mem[_6545 + mem[_6545 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6545 + mem[_6545 + 544] + 352]) + 32 >= mem[64]
                            mem[64] = mem[64] + ceil32(mem[_6545 + mem[_6545 + 544] + 352]) + 32
                            mem[_16795] = mem[_6545 + mem[_6545 + 544] + 352]
                            require _6545 + _16747 + _16768 + 32 <= return_data.size
                            mem[_16795 + 32 len ceil32(_16768)] = mem[_6545 + _16747 + 384 len ceil32(_16768)]
                            if ceil32(_16768) <= _16768:
                                mem[ceil32(return_data.size) + 544] = _16795
                                require '' == ''
                                _26994 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_26994] = 0
                                _27026 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27026] = 0
                                mem[_27026 + 32] = 96
                                _27072 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27072] = 0
                                mem[_27072 + 32] = 96
                                _27101 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27101] = 0
                                mem[_27101 + 32] = _16795
                                if mem[_16795] < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < mem[_16795]:
                                    mem[_27101] = 1
                                    if mem[_16795] < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < mem[_16795]:
                                        mem[_27101] = 2
                                        if mem[_16795] < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < mem[_16795]:
                                            mem[_27101] = 3
                                            if mem[_16795] < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < mem[_16795]:
                                                mem[_27101] = 4
                                                if mem[_16795] < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < mem[_16795]:
                                                    mem[_27101] = 5
                                                    if mem[_16795] < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < mem[_16795]:
                                                        mem[_27101] = 6
                                                        if mem[_16795] < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < mem[_16795]:
                                                            mem[_27101] = 7
                                                            if mem[_16795] < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < mem[_16795]:
                                                                return 0
                            else:
                                mem[_16795 + _16768 + 32] = 0
                                mem[ceil32(return_data.size) + 544] = _16795
                                require '' == ''
                                _27010 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_27010] = 0
                                _27042 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27042] = 0
                                mem[_27042 + 32] = 96
                                _27102 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27102] = 0
                                mem[_27102 + 32] = 96
                                _27131 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27131] = 0
                                mem[_27131 + 32] = _16795
                                if mem[_16795] < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < mem[_16795]:
                                    mem[_27131] = 1
                                    if mem[_16795] < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < mem[_16795]:
                                        mem[_27131] = 2
                                        if mem[_16795] < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < mem[_16795]:
                                            mem[_27131] = 3
                                            if mem[_16795] < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < mem[_16795]:
                                                mem[_27131] = 4
                                                if mem[_16795] < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < mem[_16795]:
                                                    mem[_27131] = 5
                                                    if mem[_16795] < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < mem[_16795]:
                                                        mem[_27131] = 6
                                                        if mem[_16795] < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < mem[_16795]:
                                                            mem[_27131] = 7
                                                            if mem[_16795] < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < mem[_16795]:
                                                                return 0
                        else:
                            mem[ceil32(return_data.size) + _6617 + 608] = 0
                            mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                            require mem[_6545 + 384] == mem[_6545 + 408 len 8]
                            mem[ceil32(return_data.size) + 384] = mem[_6545 + 384]
                            require mem[_6545 + 416] == mem[_6545 + 440 len 8]
                            mem[ceil32(return_data.size) + 416] = mem[_6545 + 416]
                            require mem[_6545 + 448] == mem[_6545 + 472 len 8]
                            mem[ceil32(return_data.size) + 448] = mem[_6545 + 448]
                            require mem[_6545 + 480] == mem[_6545 + 504 len 8]
                            mem[ceil32(return_data.size) + 480] = mem[_6545 + 480]
                            require mem[_6545 + 512] == mem[_6545 + 543 len 1]
                            mem[ceil32(return_data.size) + 512] = mem[_6545 + 512]
                            _16755 = mem[_6545 + 544]
                            require mem[_6545 + 544] <= test266151307()
                            require _6545 + mem[_6545 + 544] + 383 < return_data.size + 352
                            _16781 = mem[_6545 + mem[_6545 + 544] + 352]
                            require mem[_6545 + mem[_6545 + 544] + 352] <= test266151307()
                            _16805 = mem[64]
                            require mem[64] + ceil32(mem[_6545 + mem[_6545 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6545 + mem[_6545 + 544] + 352]) + 32 >= mem[64]
                            mem[64] = mem[64] + ceil32(mem[_6545 + mem[_6545 + 544] + 352]) + 32
                            mem[_16805] = mem[_6545 + mem[_6545 + 544] + 352]
                            require _6545 + _16755 + _16781 + 32 <= return_data.size
                            mem[_16805 + 32 len ceil32(_16781)] = mem[_6545 + _16755 + 384 len ceil32(_16781)]
                            if ceil32(_16781) <= _16781:
                                mem[ceil32(return_data.size) + 544] = _16805
                                require '' == ''
                                _26995 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_26995] = 0
                                _27027 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27027] = 0
                                mem[_27027 + 32] = 96
                                _27073 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27073] = 0
                                mem[_27073 + 32] = 96
                                _27103 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27103] = 0
                                mem[_27103 + 32] = _16805
                                if mem[_16805] < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < mem[_16805]:
                                    mem[_27103] = 1
                                    if mem[_16805] < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < mem[_16805]:
                                        mem[_27103] = 2
                                        if mem[_16805] < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < mem[_16805]:
                                            mem[_27103] = 3
                                            if mem[_16805] < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < mem[_16805]:
                                                mem[_27103] = 4
                                                if mem[_16805] < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < mem[_16805]:
                                                    mem[_27103] = 5
                                                    if mem[_16805] < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < mem[_16805]:
                                                        mem[_27103] = 6
                                                        if mem[_16805] < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < mem[_16805]:
                                                            mem[_27103] = 7
                                                            if mem[_16805] < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < mem[_16805]:
                                                                return 0
                            else:
                                mem[_16805 + _16781 + 32] = 0
                                mem[ceil32(return_data.size) + 544] = _16805
                                require '' == ''
                                _27011 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_27011] = 0
                                _27043 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27043] = 0
                                mem[_27043 + 32] = 96
                                _27104 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27104] = 0
                                mem[_27104 + 32] = 96
                                _27132 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_27132] = 0
                                mem[_27132 + 32] = _16805
                                if mem[_16805] < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < mem[_16805]:
                                    mem[_27132] = 1
                                    if mem[_16805] < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < mem[_16805]:
                                        mem[_27132] = 2
                                        if mem[_16805] < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < mem[_16805]:
                                            mem[_27132] = 3
                                            if mem[_16805] < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < mem[_16805]:
                                                mem[_27132] = 4
                                                if mem[_16805] < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < mem[_16805]:
                                                    mem[_27132] = 5
                                                    if mem[_16805] < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < mem[_16805]:
                                                        mem[_27132] = 6
                                                        if mem[_16805] < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < mem[_16805]:
                                                            mem[_27132] = 7
                                                            if mem[_16805] < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < mem[_16805]:
                                                                return 0
                else:
                    mem[612] = stor4.length.field_1
                    mem[644] = Mask(248, 8, stor4.length)
                    mem[484] = uint64(stor5.field_0)
                    mem[516] = uint64(stor5.field_64)
                    require ext_code.size(stor1)
                    staticcall stor1.0x1102965c with:
                            gas gas_remaining wei
                           args 32, 160, stor3, 224, uint64(stor5.field_0), uint64(stor5.field_64), stor2.length % 128, Mask(248, 8, stor2.length), stor4.length % 128, Mask(248, 8, stor4.length)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    _6551 = mem[352 len 4], 0
                    require mem[352 len 4], 0 <= test266151307()
                    require return_data.size - mem[352 len 4], 0 >= 224
                    require bool(ceil32(return_data.size) + 576 <= test266151307())
                    mem[64] = ceil32(return_data.size) + 576
                    _6604 = mem[mem[352 len 4], 0 + 352]
                    require mem[mem[352 len 4], 0 + 352] <= test266151307()
                    require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                    _6631 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                    require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                    require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                    mem[ceil32(return_data.size) + 576] = _6631
                    require mem[352 len 4], 0 + _6604 + _6631 + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 608 len ceil32(_6631)] = mem[mem[352 len 4], 0 + _6604 + 384 len ceil32(_6631)]
                    if ceil32(_6631) <= _6631:
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_6551 + 384] == mem[_6551 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_6551 + 384]
                        require mem[_6551 + 416] == mem[_6551 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_6551 + 416]
                        require mem[_6551 + 448] == mem[_6551 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_6551 + 448]
                        require mem[_6551 + 480] == mem[_6551 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_6551 + 480]
                        require mem[_6551 + 512] == mem[_6551 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_6551 + 512]
                        _16746 = mem[_6551 + 544]
                        require mem[_6551 + 544] <= test266151307()
                        require _6551 + mem[_6551 + 544] + 383 < return_data.size + 352
                        _16766 = mem[_6551 + mem[_6551 + 544] + 352]
                        require mem[_6551 + mem[_6551 + 544] + 352] <= test266151307()
                        _16794 = mem[64]
                        require mem[64] + ceil32(mem[_6551 + mem[_6551 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6551 + mem[_6551 + 544] + 352]) + 32 >= mem[64]
                        mem[64] = mem[64] + ceil32(mem[_6551 + mem[_6551 + 544] + 352]) + 32
                        mem[_16794] = mem[_6551 + mem[_6551 + 544] + 352]
                        require _6551 + _16746 + _16766 + 32 <= return_data.size
                        mem[_16794 + 32 len ceil32(_16766)] = mem[_6551 + _16746 + 384 len ceil32(_16766)]
                        if ceil32(_16766) <= _16766:
                            mem[ceil32(return_data.size) + 544] = _16794
                            require '' == ''
                            _26992 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_26992] = 0
                            _27024 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27024] = 0
                            mem[_27024 + 32] = 96
                            _27069 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27069] = 0
                            mem[_27069 + 32] = 96
                            _27097 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27097] = 0
                            mem[_27097 + 32] = _16794
                            if mem[_16794] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_16794]:
                                mem[_27097] = 1
                                if mem[_16794] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_16794]:
                                    mem[_27097] = 2
                                    if mem[_16794] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_16794]:
                                        mem[_27097] = 3
                                        if mem[_16794] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_16794]:
                                            mem[_27097] = 4
                                            if mem[_16794] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_16794]:
                                                mem[_27097] = 5
                                                if mem[_16794] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_16794]:
                                                    mem[_27097] = 6
                                                    if mem[_16794] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_16794]:
                                                        mem[_27097] = 7
                                                        if mem[_16794] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_16794]:
                                                            return 0
                        else:
                            mem[_16794 + _16766 + 32] = 0
                            mem[ceil32(return_data.size) + 544] = _16794
                            require '' == ''
                            _27008 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_27008] = 0
                            _27040 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27040] = 0
                            mem[_27040 + 32] = 96
                            _27098 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27098] = 0
                            mem[_27098 + 32] = 96
                            _27129 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27129] = 0
                            mem[_27129 + 32] = _16794
                            if mem[_16794] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_16794]:
                                mem[_27129] = 1
                                if mem[_16794] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_16794]:
                                    mem[_27129] = 2
                                    if mem[_16794] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_16794]:
                                        mem[_27129] = 3
                                        if mem[_16794] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_16794]:
                                            mem[_27129] = 4
                                            if mem[_16794] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_16794]:
                                                mem[_27129] = 5
                                                if mem[_16794] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_16794]:
                                                    mem[_27129] = 6
                                                    if mem[_16794] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_16794]:
                                                        mem[_27129] = 7
                                                        if mem[_16794] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_16794]:
                                                            return 0
                    else:
                        mem[ceil32(return_data.size) + _6631 + 608] = 0
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_6551 + 384] == mem[_6551 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_6551 + 384]
                        require mem[_6551 + 416] == mem[_6551 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_6551 + 416]
                        require mem[_6551 + 448] == mem[_6551 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_6551 + 448]
                        require mem[_6551 + 480] == mem[_6551 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_6551 + 480]
                        require mem[_6551 + 512] == mem[_6551 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_6551 + 512]
                        _16754 = mem[_6551 + 544]
                        require mem[_6551 + 544] <= test266151307()
                        require _6551 + mem[_6551 + 544] + 383 < return_data.size + 352
                        _16780 = mem[_6551 + mem[_6551 + 544] + 352]
                        require mem[_6551 + mem[_6551 + 544] + 352] <= test266151307()
                        _16804 = mem[64]
                        require mem[64] + ceil32(mem[_6551 + mem[_6551 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6551 + mem[_6551 + 544] + 352]) + 32 >= mem[64]
                        mem[64] = mem[64] + ceil32(mem[_6551 + mem[_6551 + 544] + 352]) + 32
                        mem[_16804] = mem[_6551 + mem[_6551 + 544] + 352]
                        require _6551 + _16754 + _16780 + 32 <= return_data.size
                        mem[_16804 + 32 len ceil32(_16780)] = mem[_6551 + _16754 + 384 len ceil32(_16780)]
                        if ceil32(_16780) <= _16780:
                            mem[ceil32(return_data.size) + 544] = _16804
                            require '' == ''
                            _26993 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_26993] = 0
                            _27025 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27025] = 0
                            mem[_27025 + 32] = 96
                            _27070 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27070] = 0
                            mem[_27070 + 32] = 96
                            _27099 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27099] = 0
                            mem[_27099 + 32] = _16804
                            if mem[_16804] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_16804]:
                                mem[_27099] = 1
                                if mem[_16804] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_16804]:
                                    mem[_27099] = 2
                                    if mem[_16804] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_16804]:
                                        mem[_27099] = 3
                                        if mem[_16804] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_16804]:
                                            mem[_27099] = 4
                                            if mem[_16804] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_16804]:
                                                mem[_27099] = 5
                                                if mem[_16804] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_16804]:
                                                    mem[_27099] = 6
                                                    if mem[_16804] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_16804]:
                                                        mem[_27099] = 7
                                                        if mem[_16804] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_16804]:
                                                            return 0
                        else:
                            mem[_16804 + _16780 + 32] = 0
                            mem[ceil32(return_data.size) + 544] = _16804
                            require '' == ''
                            _27009 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_27009] = 0
                            _27041 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27041] = 0
                            mem[_27041 + 32] = 96
                            _27100 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27100] = 0
                            mem[_27100 + 32] = 96
                            _27130 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_27130] = 0
                            mem[_27130 + 32] = _16804
                            if mem[_16804] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_16804]:
                                mem[_27130] = 1
                                if mem[_16804] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_16804]:
                                    mem[_27130] = 2
                                    if mem[_16804] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_16804]:
                                        mem[_27130] = 3
                                        if mem[_16804] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_16804]:
                                            mem[_27130] = 4
                                            if mem[_16804] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_16804]:
                                                mem[_27130] = 5
                                                if mem[_16804] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_16804]:
                                                    mem[_27130] = 6
                                                    if mem[_16804] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_16804]:
                                                        mem[_27130] = 7
                                                        if mem[_16804] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_16804]:
                                                            return 0
            else:
                if bool(stor2.length) != 1:
                    mem[420] = stor3
                    mem[452] = -388
                    if not bool(stor4.length):
                        mem[0] = stor4.length.field_1
                        mem[32] = Mask(248, 8, stor4.length)
                        mem[484] = uint64(stor5.field_0)
                        mem[516] = uint64(stor5.field_64)
                        require ext_code.size(stor1)
                        staticcall stor1.0x1102965c with:
                                gas gas_remaining wei
                               args mem[356 len -292]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        _6546 = mem[352 len 4], 0
                        require mem[352 len 4], 0 <= test266151307()
                        require return_data.size - mem[352 len 4], 0 >= 224
                        require bool(ceil32(return_data.size) + 576 <= test266151307())
                        mem[64] = ceil32(return_data.size) + 576
                        _6597 = mem[mem[352 len 4], 0 + 352]
                        require mem[mem[352 len 4], 0 + 352] <= test266151307()
                        require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                        _6620 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                        require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                        require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                        mem[ceil32(return_data.size) + 576] = _6620
                        require mem[352 len 4], 0 + _6597 + _6620 + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 608 len ceil32(_6620)] = mem[mem[352 len 4], 0 + _6597 + 384 len ceil32(_6620)]
                        if ceil32(_6620) > _6620:
                            mem[ceil32(return_data.size) + _6620 + 608] = 0
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_6546 + 384] == mem[_6546 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_6546 + 384]
                        require mem[_6546 + 416] == mem[_6546 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_6546 + 416]
                        require mem[_6546 + 448] == mem[_6546 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_6546 + 448]
                        require mem[_6546 + 480] == mem[_6546 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_6546 + 480]
                        require mem[_6546 + 512] == mem[_6546 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_6546 + 512]
                        require mem[_6546 + 544] <= test266151307()
                        require _6546 + mem[_6546 + 544] + 383 < return_data.size + 352
                        require mem[_6546 + mem[_6546 + 544] + 352] <= test266151307()
                        require mem[64] + ceil32(mem[_6546 + mem[_6546 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6546 + mem[_6546 + 544] + 352]) + 32 >= mem[64]
                        require _6546 + mem[_6546 + 544] + mem[_6546 + mem[_6546 + 544] + 352] + 32 <= return_data.size
                        require '' == ''
                        if mem[_6546 + mem[_6546 + 544] + 352] < 1:
                            revert with 0, 'Obi: Out of range'
                        if 0 < mem[_6546 + mem[_6546 + 544] + 352]:
                            if mem[_6546 + mem[_6546 + 544] + 352] < 2:
                                revert with 0, 'Obi: Out of range'
                            if 1 < mem[_6546 + mem[_6546 + 544] + 352]:
                                if mem[_6546 + mem[_6546 + 544] + 352] < 3:
                                    revert with 0, 'Obi: Out of range'
                                if 2 < mem[_6546 + mem[_6546 + 544] + 352]:
                                    if mem[_6546 + mem[_6546 + 544] + 352] < 4:
                                        revert with 0, 'Obi: Out of range'
                                    if 3 < mem[_6546 + mem[_6546 + 544] + 352]:
                                        if mem[_6546 + mem[_6546 + 544] + 352] < 5:
                                            revert with 0, 'Obi: Out of range'
                                        if 4 < mem[_6546 + mem[_6546 + 544] + 352]:
                                            if mem[_6546 + mem[_6546 + 544] + 352] < 6:
                                                revert with 0, 'Obi: Out of range'
                                            if 5 < mem[_6546 + mem[_6546 + 544] + 352]:
                                                if mem[_6546 + mem[_6546 + 544] + 352] < 7:
                                                    revert with 0, 'Obi: Out of range'
                                                if 6 < mem[_6546 + mem[_6546 + 544] + 352]:
                                                    if mem[_6546 + mem[_6546 + 544] + 352] < 8:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 7 < mem[_6546 + mem[_6546 + 544] + 352]:
                                                        return 0
                    else:
                        if bool(stor4.length) != 1:
                            mem[484] = uint64(stor5.field_0)
                            mem[516] = uint64(stor5.field_64)
                            require ext_code.size(stor1)
                            staticcall stor1.0x1102965c with:
                                    gas gas_remaining wei
                                   args mem[356 len -356]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            _6541 = mem[352 len 4], 0
                            require mem[352 len 4], 0 <= test266151307()
                            require return_data.size - mem[352 len 4], 0 >= 224
                            require bool(ceil32(return_data.size) + 576 <= test266151307())
                            mem[64] = ceil32(return_data.size) + 576
                            _6586 = mem[mem[352 len 4], 0 + 352]
                            require mem[mem[352 len 4], 0 + 352] <= test266151307()
                            require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                            _6611 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                            require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                            require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                            mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                            mem[ceil32(return_data.size) + 576] = _6611
                            require mem[352 len 4], 0 + _6586 + _6611 + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 608 len ceil32(_6611)] = mem[mem[352 len 4], 0 + _6586 + 384 len ceil32(_6611)]
                            if ceil32(_6611) > _6611:
                                mem[ceil32(return_data.size) + _6611 + 608] = 0
                            mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                            require mem[_6541 + 384] == mem[_6541 + 408 len 8]
                            mem[ceil32(return_data.size) + 384] = mem[_6541 + 384]
                            require mem[_6541 + 416] == mem[_6541 + 440 len 8]
                            mem[ceil32(return_data.size) + 416] = mem[_6541 + 416]
                            require mem[_6541 + 448] == mem[_6541 + 472 len 8]
                            mem[ceil32(return_data.size) + 448] = mem[_6541 + 448]
                            require mem[_6541 + 480] == mem[_6541 + 504 len 8]
                            mem[ceil32(return_data.size) + 480] = mem[_6541 + 480]
                            require mem[_6541 + 512] == mem[_6541 + 543 len 1]
                            mem[ceil32(return_data.size) + 512] = mem[_6541 + 512]
                            require mem[_6541 + 544] <= test266151307()
                            require _6541 + mem[_6541 + 544] + 383 < return_data.size + 352
                            require mem[_6541 + mem[_6541 + 544] + 352] <= test266151307()
                            require mem[64] + ceil32(mem[_6541 + mem[_6541 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6541 + mem[_6541 + 544] + 352]) + 32 >= mem[64]
                            require _6541 + mem[_6541 + 544] + mem[_6541 + mem[_6541 + 544] + 352] + 32 <= return_data.size
                            require '' == ''
                            if mem[_6541 + mem[_6541 + 544] + 352] < 1:
                                revert with 0, 'Obi: Out of range'
                            if 0 < mem[_6541 + mem[_6541 + 544] + 352]:
                                if mem[_6541 + mem[_6541 + 544] + 352] < 2:
                                    revert with 0, 'Obi: Out of range'
                                if 1 < mem[_6541 + mem[_6541 + 544] + 352]:
                                    if mem[_6541 + mem[_6541 + 544] + 352] < 3:
                                        revert with 0, 'Obi: Out of range'
                                    if 2 < mem[_6541 + mem[_6541 + 544] + 352]:
                                        if mem[_6541 + mem[_6541 + 544] + 352] < 4:
                                            revert with 0, 'Obi: Out of range'
                                        if 3 < mem[_6541 + mem[_6541 + 544] + 352]:
                                            if mem[_6541 + mem[_6541 + 544] + 352] < 5:
                                                revert with 0, 'Obi: Out of range'
                                            if 4 < mem[_6541 + mem[_6541 + 544] + 352]:
                                                if mem[_6541 + mem[_6541 + 544] + 352] < 6:
                                                    revert with 0, 'Obi: Out of range'
                                                if 5 < mem[_6541 + mem[_6541 + 544] + 352]:
                                                    if mem[_6541 + mem[_6541 + 544] + 352] < 7:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 6 < mem[_6541 + mem[_6541 + 544] + 352]:
                                                        if mem[_6541 + mem[_6541 + 544] + 352] < 8:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 7 < mem[_6541 + mem[_6541 + 544] + 352]:
                                                            return 0
                        else:
                            mem[0] = 4
                            idx = 0
                            s = 0
                            while idx < stor4.length.field_1:
                                mem[idx + 32] = stor4[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[484] = uint64(stor5.field_0)
                            mem[516] = uint64(stor5.field_64)
                            require ext_code.size(stor1)
                            staticcall stor1.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len ceil32(stor4.length.field_1) + -mem[64] + 28]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16703 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _16714 = mem[_16703]
                            require mem[_16703] <= test266151307()
                            require return_data.size - mem[_16703] >= 224
                            require bool(_16703 + ceil32(return_data.size) + 224 <= test266151307())
                            mem[64] = _16703 + ceil32(return_data.size) + 224
                            _16739 = mem[_16703 + _16714]
                            require mem[_16703 + _16714] <= test266151307()
                            require _16703 + _16714 + mem[_16703 + _16714] + 31 < _16703 + return_data.size
                            _16743 = mem[_16703 + _16714 + mem[_16703 + _16714]]
                            require mem[_16703 + _16714 + mem[_16703 + _16714]] <= test266151307()
                            require _16703 + ceil32(return_data.size) + ceil32(mem[_16703 + _16714 + mem[_16703 + _16714]]) + 256 <= test266151307() and ceil32(mem[_16703 + _16714 + mem[_16703 + _16714]]) + 256 >= 224
                            mem[64] = _16703 + ceil32(return_data.size) + ceil32(mem[_16703 + _16714 + mem[_16703 + _16714]]) + 256
                            mem[_16703 + ceil32(return_data.size) + 224] = _16743
                            require _16714 + _16739 + _16743 + 32 <= return_data.size
                            mem[_16703 + ceil32(return_data.size) + 256 len ceil32(_16743)] = mem[_16703 + _16714 + _16739 + 32 len ceil32(_16743)]
                            if ceil32(_16743) <= _16743:
                                mem[_16703 + ceil32(return_data.size)] = _16703 + ceil32(return_data.size) + 224
                                require mem[_16703 + _16714 + 32] == mem[_16703 + _16714 + 56 len 8]
                                mem[_16703 + ceil32(return_data.size) + 32] = mem[_16703 + _16714 + 32]
                                require mem[_16703 + _16714 + 64] == mem[_16703 + _16714 + 88 len 8]
                                mem[_16703 + ceil32(return_data.size) + 64] = mem[_16703 + _16714 + 64]
                                require mem[_16703 + _16714 + 96] == mem[_16703 + _16714 + 120 len 8]
                                mem[_16703 + ceil32(return_data.size) + 96] = mem[_16703 + _16714 + 96]
                                require mem[_16703 + _16714 + 128] == mem[_16703 + _16714 + 152 len 8]
                                mem[_16703 + ceil32(return_data.size) + 128] = mem[_16703 + _16714 + 128]
                                require mem[_16703 + _16714 + 160] == mem[_16703 + _16714 + 191 len 1]
                                mem[_16703 + ceil32(return_data.size) + 160] = mem[_16703 + _16714 + 160]
                                _28128 = mem[_16703 + _16714 + 192]
                                require mem[_16703 + _16714 + 192] <= test266151307()
                                require _16703 + _16714 + mem[_16703 + _16714 + 192] + 31 < _16703 + return_data.size
                                _28371 = mem[_16703 + _16714 + mem[_16703 + _16714 + 192]]
                                require mem[_16703 + _16714 + mem[_16703 + _16714 + 192]] <= test266151307()
                                _28526 = mem[64]
                                require mem[64] + ceil32(mem[_16703 + _16714 + mem[_16703 + _16714 + 192]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16703 + _16714 + mem[_16703 + _16714 + 192]]) + 32 >= mem[64]
                                mem[64] = mem[64] + ceil32(mem[_16703 + _16714 + mem[_16703 + _16714 + 192]]) + 32
                                mem[_28526] = _28371
                                require _16714 + _28128 + _28371 + 32 <= return_data.size
                                mem[_28526 + 32 len ceil32(_28371)] = mem[_16703 + _16714 + _28128 + 32 len ceil32(_28371)]
                                if ceil32(_28371) > _28371:
                                    mem[_28526 + _28371 + 32] = 0
                                require mem[_16703 + 32] == mem[_16703 + 32]
                                if _28371 < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < _28371:
                                    if _28371 < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < _28371:
                                        if _28371 < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < _28371:
                                            if _28371 < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < _28371:
                                                if _28371 < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < _28371:
                                                    if _28371 < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < _28371:
                                                        if _28371 < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < _28371:
                                                            if _28371 < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < _28371:
                                                                return 0
                            else:
                                mem[_16703 + ceil32(return_data.size) + _16743 + 256] = 0
                                mem[_16703 + ceil32(return_data.size)] = _16703 + ceil32(return_data.size) + 224
                                require mem[_16703 + _16714 + 32] == mem[_16703 + _16714 + 56 len 8]
                                mem[_16703 + ceil32(return_data.size) + 32] = mem[_16703 + _16714 + 32]
                                require mem[_16703 + _16714 + 64] == mem[_16703 + _16714 + 88 len 8]
                                mem[_16703 + ceil32(return_data.size) + 64] = mem[_16703 + _16714 + 64]
                                require mem[_16703 + _16714 + 96] == mem[_16703 + _16714 + 120 len 8]
                                mem[_16703 + ceil32(return_data.size) + 96] = mem[_16703 + _16714 + 96]
                                require mem[_16703 + _16714 + 128] == mem[_16703 + _16714 + 152 len 8]
                                mem[_16703 + ceil32(return_data.size) + 128] = mem[_16703 + _16714 + 128]
                                require mem[_16703 + _16714 + 160] == mem[_16703 + _16714 + 191 len 1]
                                mem[_16703 + ceil32(return_data.size) + 160] = mem[_16703 + _16714 + 160]
                                _28178 = mem[_16703 + _16714 + 192]
                                require mem[_16703 + _16714 + 192] <= test266151307()
                                require _16703 + _16714 + mem[_16703 + _16714 + 192] + 31 < _16703 + return_data.size
                                _28465 = mem[_16703 + _16714 + mem[_16703 + _16714 + 192]]
                                require mem[_16703 + _16714 + mem[_16703 + _16714 + 192]] <= test266151307()
                                _28545 = mem[64]
                                require mem[64] + ceil32(mem[_16703 + _16714 + mem[_16703 + _16714 + 192]]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16703 + _16714 + mem[_16703 + _16714 + 192]]) + 32 >= mem[64]
                                mem[64] = mem[64] + ceil32(mem[_16703 + _16714 + mem[_16703 + _16714 + 192]]) + 32
                                mem[_28545] = _28465
                                require _16714 + _28178 + _28465 + 32 <= return_data.size
                                mem[_28545 + 32 len ceil32(_28465)] = mem[_16703 + _16714 + _28178 + 32 len ceil32(_28465)]
                                if ceil32(_28465) > _28465:
                                    mem[_28545 + _28465 + 32] = 0
                                require mem[_16703 + 32] == mem[_16703 + 32]
                                if _28465 < 1:
                                    revert with 0, 'Obi: Out of range'
                                if 0 < _28465:
                                    if _28465 < 2:
                                        revert with 0, 'Obi: Out of range'
                                    if 1 < _28465:
                                        if _28465 < 3:
                                            revert with 0, 'Obi: Out of range'
                                        if 2 < _28465:
                                            if _28465 < 4:
                                                revert with 0, 'Obi: Out of range'
                                            if 3 < _28465:
                                                if _28465 < 5:
                                                    revert with 0, 'Obi: Out of range'
                                                if 4 < _28465:
                                                    if _28465 < 6:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 5 < _28465:
                                                        if _28465 < 7:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 6 < _28465:
                                                            if _28465 < 8:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 7 < _28465:
                                                                return 0
                else:
                    mem[548] = stor2.length.field_1
                    mem[0] = 2
                    idx = 0
                    s = 0
                    while idx < stor2.length.field_1:
                        mem[idx + 580] = stor2[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[420] = stor3
                    mem[452] = ceil32(stor2.length.field_1) + 192
                    if not bool(stor4.length):
                        mem[ceil32(stor2.length.field_1) + 580] = stor4.length.field_1
                        mem[ceil32(stor2.length.field_1) + 612] = Mask(248, 8, stor4.length)
                        mem[484] = uint64(stor5.field_0)
                        mem[516] = uint64(stor5.field_64)
                        require ext_code.size(stor1)
                        staticcall stor1.0x1102965c with:
                                gas gas_remaining wei
                               args 32, 160, stor3, ceil32(stor2.length.field_1) + 192, uint64(stor5.field_0), uint64(stor5.field_64), 2 * Mask(256, -1, stor2.length.field_1), mem[580 len ceil32(stor2.length.field_1) + 32], Mask(248, 8, stor4.length)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        _16792 = mem[352 len 4], 0
                        require mem[352 len 4], 0 <= test266151307()
                        require return_data.size - mem[352 len 4], 0 >= 224
                        require bool(ceil32(return_data.size) + 576 <= test266151307())
                        mem[64] = ceil32(return_data.size) + 576
                        _16831 = mem[mem[352 len 4], 0 + 352]
                        require mem[mem[352 len 4], 0 + 352] <= test266151307()
                        require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                        _16865 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                        require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                        require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                        mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                        mem[ceil32(return_data.size) + 576] = _16865
                        require mem[352 len 4], 0 + _16831 + _16865 + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 608 len ceil32(_16865)] = mem[mem[352 len 4], 0 + _16831 + 384 len ceil32(_16865)]
                        if ceil32(_16865) > _16865:
                            mem[ceil32(return_data.size) + _16865 + 608] = 0
                        mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                        require mem[_16792 + 384] == mem[_16792 + 408 len 8]
                        mem[ceil32(return_data.size) + 384] = mem[_16792 + 384]
                        require mem[_16792 + 416] == mem[_16792 + 440 len 8]
                        mem[ceil32(return_data.size) + 416] = mem[_16792 + 416]
                        require mem[_16792 + 448] == mem[_16792 + 472 len 8]
                        mem[ceil32(return_data.size) + 448] = mem[_16792 + 448]
                        require mem[_16792 + 480] == mem[_16792 + 504 len 8]
                        mem[ceil32(return_data.size) + 480] = mem[_16792 + 480]
                        require mem[_16792 + 512] == mem[_16792 + 543 len 1]
                        mem[ceil32(return_data.size) + 512] = mem[_16792 + 512]
                        require mem[_16792 + 544] <= test266151307()
                        require _16792 + mem[_16792 + 544] + 383 < return_data.size + 352
                        require mem[_16792 + mem[_16792 + 544] + 352] <= test266151307()
                        require mem[64] + ceil32(mem[_16792 + mem[_16792 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16792 + mem[_16792 + 544] + 352]) + 32 >= mem[64]
                        require _16792 + mem[_16792 + 544] + mem[_16792 + mem[_16792 + 544] + 352] + 32 <= return_data.size
                        require '' == ''
                        if mem[_16792 + mem[_16792 + 544] + 352] < 1:
                            revert with 0, 'Obi: Out of range'
                        if 0 < mem[_16792 + mem[_16792 + 544] + 352]:
                            if mem[_16792 + mem[_16792 + 544] + 352] < 2:
                                revert with 0, 'Obi: Out of range'
                            if 1 < mem[_16792 + mem[_16792 + 544] + 352]:
                                if mem[_16792 + mem[_16792 + 544] + 352] < 3:
                                    revert with 0, 'Obi: Out of range'
                                if 2 < mem[_16792 + mem[_16792 + 544] + 352]:
                                    if mem[_16792 + mem[_16792 + 544] + 352] < 4:
                                        revert with 0, 'Obi: Out of range'
                                    if 3 < mem[_16792 + mem[_16792 + 544] + 352]:
                                        if mem[_16792 + mem[_16792 + 544] + 352] < 5:
                                            revert with 0, 'Obi: Out of range'
                                        if 4 < mem[_16792 + mem[_16792 + 544] + 352]:
                                            if mem[_16792 + mem[_16792 + 544] + 352] < 6:
                                                revert with 0, 'Obi: Out of range'
                                            if 5 < mem[_16792 + mem[_16792 + 544] + 352]:
                                                if mem[_16792 + mem[_16792 + 544] + 352] < 7:
                                                    revert with 0, 'Obi: Out of range'
                                                if 6 < mem[_16792 + mem[_16792 + 544] + 352]:
                                                    if mem[_16792 + mem[_16792 + 544] + 352] < 8:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 7 < mem[_16792 + mem[_16792 + 544] + 352]:
                                                        return 0
                    else:
                        if bool(stor4.length) != 1:
                            mem[484] = uint64(stor5.field_0)
                            mem[516] = uint64(stor5.field_64)
                            require ext_code.size(stor1)
                            staticcall stor1.0x1102965c with:
                                    gas gas_remaining wei
                                   args mem[356 len -356]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            _16790 = mem[352 len 4], 0
                            require mem[352 len 4], 0 <= test266151307()
                            require return_data.size - mem[352 len 4], 0 >= 224
                            require bool(ceil32(return_data.size) + 576 <= test266151307())
                            mem[64] = ceil32(return_data.size) + 576
                            _16826 = mem[mem[352 len 4], 0 + 352]
                            require mem[mem[352 len 4], 0 + 352] <= test266151307()
                            require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                            _16852 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                            require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                            require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                            mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                            mem[ceil32(return_data.size) + 576] = _16852
                            require mem[352 len 4], 0 + _16826 + _16852 + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 608 len ceil32(_16852)] = mem[mem[352 len 4], 0 + _16826 + 384 len ceil32(_16852)]
                            if ceil32(_16852) <= _16852:
                                mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                                require mem[_16790 + 384] == mem[_16790 + 408 len 8]
                                mem[ceil32(return_data.size) + 384] = mem[_16790 + 384]
                                require mem[_16790 + 416] == mem[_16790 + 440 len 8]
                                mem[ceil32(return_data.size) + 416] = mem[_16790 + 416]
                                require mem[_16790 + 448] == mem[_16790 + 472 len 8]
                                mem[ceil32(return_data.size) + 448] = mem[_16790 + 448]
                                require mem[_16790 + 480] == mem[_16790 + 504 len 8]
                                mem[ceil32(return_data.size) + 480] = mem[_16790 + 480]
                                require mem[_16790 + 512] == mem[_16790 + 543 len 1]
                                mem[ceil32(return_data.size) + 512] = mem[_16790 + 512]
                                _28123 = mem[_16790 + 544]
                                require mem[_16790 + 544] <= test266151307()
                                require _16790 + mem[_16790 + 544] + 383 < return_data.size + 352
                                _28358 = mem[_16790 + mem[_16790 + 544] + 352]
                                require mem[_16790 + mem[_16790 + 544] + 352] <= test266151307()
                                _28525 = mem[64]
                                require mem[64] + ceil32(mem[_16790 + mem[_16790 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16790 + mem[_16790 + 544] + 352]) + 32 >= mem[64]
                                mem[64] = mem[64] + ceil32(mem[_16790 + mem[_16790 + 544] + 352]) + 32
                                mem[_28525] = mem[_16790 + mem[_16790 + 544] + 352]
                                require _16790 + _28123 + _28358 + 32 <= return_data.size
                                mem[_28525 + 32 len ceil32(_28358)] = mem[_16790 + _28123 + 384 len ceil32(_28358)]
                                if ceil32(_28358) <= _28358:
                                    mem[ceil32(return_data.size) + 544] = _28525
                                    require '' == ''
                                    _37045 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_37045] = 0
                                    _37093 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37093] = 0
                                    mem[_37093 + 32] = 96
                                    _37148 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37148] = 0
                                    mem[_37148 + 32] = 96
                                    _37181 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37181] = 0
                                    mem[_37181 + 32] = _28525
                                    if mem[_28525] < 1:
                                        revert with 0, 'Obi: Out of range'
                                    if 0 < mem[_28525]:
                                        mem[_37181] = 1
                                        if mem[_28525] < 2:
                                            revert with 0, 'Obi: Out of range'
                                        if 1 < mem[_28525]:
                                            mem[_37181] = 2
                                            if mem[_28525] < 3:
                                                revert with 0, 'Obi: Out of range'
                                            if 2 < mem[_28525]:
                                                mem[_37181] = 3
                                                if mem[_28525] < 4:
                                                    revert with 0, 'Obi: Out of range'
                                                if 3 < mem[_28525]:
                                                    mem[_37181] = 4
                                                    if mem[_28525] < 5:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 4 < mem[_28525]:
                                                        mem[_37181] = 5
                                                        if mem[_28525] < 6:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 5 < mem[_28525]:
                                                            mem[_37181] = 6
                                                            if mem[_28525] < 7:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 6 < mem[_28525]:
                                                                mem[_37181] = 7
                                                                if mem[_28525] < 8:
                                                                    revert with 0, 'Obi: Out of range'
                                                                if 7 < mem[_28525]:
                                                                    return 0
                                else:
                                    mem[_28525 + _28358 + 32] = 0
                                    mem[ceil32(return_data.size) + 544] = _28525
                                    require '' == ''
                                    _37069 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_37069] = 0
                                    _37117 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37117] = 0
                                    mem[_37117 + 32] = 96
                                    _37182 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37182] = 0
                                    mem[_37182 + 32] = 96
                                    _37225 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37225] = 0
                                    mem[_37225 + 32] = _28525
                                    if mem[_28525] < 1:
                                        revert with 0, 'Obi: Out of range'
                                    if 0 < mem[_28525]:
                                        mem[_37225] = 1
                                        if mem[_28525] < 2:
                                            revert with 0, 'Obi: Out of range'
                                        if 1 < mem[_28525]:
                                            mem[_37225] = 2
                                            if mem[_28525] < 3:
                                                revert with 0, 'Obi: Out of range'
                                            if 2 < mem[_28525]:
                                                mem[_37225] = 3
                                                if mem[_28525] < 4:
                                                    revert with 0, 'Obi: Out of range'
                                                if 3 < mem[_28525]:
                                                    mem[_37225] = 4
                                                    if mem[_28525] < 5:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 4 < mem[_28525]:
                                                        mem[_37225] = 5
                                                        if mem[_28525] < 6:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 5 < mem[_28525]:
                                                            mem[_37225] = 6
                                                            if mem[_28525] < 7:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 6 < mem[_28525]:
                                                                mem[_37225] = 7
                                                                if mem[_28525] < 8:
                                                                    revert with 0, 'Obi: Out of range'
                                                                if 7 < mem[_28525]:
                                                                    return 0
                            else:
                                mem[ceil32(return_data.size) + _16852 + 608] = 0
                                mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                                require mem[_16790 + 384] == mem[_16790 + 408 len 8]
                                mem[ceil32(return_data.size) + 384] = mem[_16790 + 384]
                                require mem[_16790 + 416] == mem[_16790 + 440 len 8]
                                mem[ceil32(return_data.size) + 416] = mem[_16790 + 416]
                                require mem[_16790 + 448] == mem[_16790 + 472 len 8]
                                mem[ceil32(return_data.size) + 448] = mem[_16790 + 448]
                                require mem[_16790 + 480] == mem[_16790 + 504 len 8]
                                mem[ceil32(return_data.size) + 480] = mem[_16790 + 480]
                                require mem[_16790 + 512] == mem[_16790 + 543 len 1]
                                mem[ceil32(return_data.size) + 512] = mem[_16790 + 512]
                                _28171 = mem[_16790 + 544]
                                require mem[_16790 + 544] <= test266151307()
                                require _16790 + mem[_16790 + 544] + 383 < return_data.size + 352
                                _28458 = mem[_16790 + mem[_16790 + 544] + 352]
                                require mem[_16790 + mem[_16790 + 544] + 352] <= test266151307()
                                _28542 = mem[64]
                                require mem[64] + ceil32(mem[_16790 + mem[_16790 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_16790 + mem[_16790 + 544] + 352]) + 32 >= mem[64]
                                mem[64] = mem[64] + ceil32(mem[_16790 + mem[_16790 + 544] + 352]) + 32
                                mem[_28542] = mem[_16790 + mem[_16790 + 544] + 352]
                                require _16790 + _28171 + _28458 + 32 <= return_data.size
                                mem[_28542 + 32 len ceil32(_28458)] = mem[_16790 + _28171 + 384 len ceil32(_28458)]
                                if ceil32(_28458) <= _28458:
                                    mem[ceil32(return_data.size) + 544] = _28542
                                    require '' == ''
                                    _37046 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_37046] = 0
                                    _37094 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37094] = 0
                                    mem[_37094 + 32] = 96
                                    _37149 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37149] = 0
                                    mem[_37149 + 32] = 96
                                    _37183 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37183] = 0
                                    mem[_37183 + 32] = _28542
                                    if mem[_28542] < 1:
                                        revert with 0, 'Obi: Out of range'
                                    if 0 < mem[_28542]:
                                        mem[_37183] = 1
                                        if mem[_28542] < 2:
                                            revert with 0, 'Obi: Out of range'
                                        if 1 < mem[_28542]:
                                            mem[_37183] = 2
                                            if mem[_28542] < 3:
                                                revert with 0, 'Obi: Out of range'
                                            if 2 < mem[_28542]:
                                                mem[_37183] = 3
                                                if mem[_28542] < 4:
                                                    revert with 0, 'Obi: Out of range'
                                                if 3 < mem[_28542]:
                                                    mem[_37183] = 4
                                                    if mem[_28542] < 5:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 4 < mem[_28542]:
                                                        mem[_37183] = 5
                                                        if mem[_28542] < 6:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 5 < mem[_28542]:
                                                            mem[_37183] = 6
                                                            if mem[_28542] < 7:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 6 < mem[_28542]:
                                                                mem[_37183] = 7
                                                                if mem[_28542] < 8:
                                                                    revert with 0, 'Obi: Out of range'
                                                                if 7 < mem[_28542]:
                                                                    return 0
                                else:
                                    mem[_28542 + _28458 + 32] = 0
                                    mem[ceil32(return_data.size) + 544] = _28542
                                    require '' == ''
                                    _37070 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_37070] = 0
                                    _37118 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37118] = 0
                                    mem[_37118 + 32] = 96
                                    _37184 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37184] = 0
                                    mem[_37184 + 32] = 96
                                    _37226 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_37226] = 0
                                    mem[_37226 + 32] = _28542
                                    if mem[_28542] < 1:
                                        revert with 0, 'Obi: Out of range'
                                    if 0 < mem[_28542]:
                                        mem[_37226] = 1
                                        if mem[_28542] < 2:
                                            revert with 0, 'Obi: Out of range'
                                        if 1 < mem[_28542]:
                                            mem[_37226] = 2
                                            if mem[_28542] < 3:
                                                revert with 0, 'Obi: Out of range'
                                            if 2 < mem[_28542]:
                                                mem[_37226] = 3
                                                if mem[_28542] < 4:
                                                    revert with 0, 'Obi: Out of range'
                                                if 3 < mem[_28542]:
                                                    mem[_37226] = 4
                                                    if mem[_28542] < 5:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 4 < mem[_28542]:
                                                        mem[_37226] = 5
                                                        if mem[_28542] < 6:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 5 < mem[_28542]:
                                                            mem[_37226] = 6
                                                            if mem[_28542] < 7:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 6 < mem[_28542]:
                                                                mem[_37226] = 7
                                                                if mem[_28542] < 8:
                                                                    revert with 0, 'Obi: Out of range'
                                                                if 7 < mem[_28542]:
                                                                    return 0
                        else:
                            mem[ceil32(stor2.length.field_1) + 580] = stor4.length.field_1
                            mem[0] = 4
                            idx = 0
                            s = 0
                            while idx < stor4.length.field_1:
                                mem[ceil32(stor2.length.field_1) + idx + 612] = stor4[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[484] = uint64(stor5.field_0)
                            mem[516] = uint64(stor5.field_64)
                            require ext_code.size(stor1)
                            staticcall stor1.0x1102965c with:
                                    gas gas_remaining wei
                                   args 32, 160, stor3, ceil32(stor2.length.field_1) + 192, uint64(stor5.field_0), uint64(stor5.field_64), 2 * Mask(256, -1, stor2.length.field_1), mem[580 len ceil32(stor2.length.field_1) + ceil32(stor4.length.field_1) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            _27441 = mem[352 len 4], 0
                            require mem[352 len 4], 0 <= test266151307()
                            require return_data.size - mem[352 len 4], 0 >= 224
                            require bool(ceil32(return_data.size) + 576 <= test266151307())
                            mem[64] = ceil32(return_data.size) + 576
                            _27817 = mem[mem[352 len 4], 0 + 352]
                            require mem[mem[352 len 4], 0 + 352] <= test266151307()
                            require mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 383 < return_data.size + 352
                            _28025 = mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]
                            require mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352] <= test266151307()
                            require ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608 <= test266151307() and ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 256 >= 224
                            mem[64] = ceil32(return_data.size) + ceil32(mem[mem[352 len 4], 0 + mem[mem[352 len 4], 0 + 352] + 352]) + 608
                            mem[ceil32(return_data.size) + 576] = _28025
                            require mem[352 len 4], 0 + _27817 + _28025 + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 608 len ceil32(_28025)] = mem[mem[352 len 4], 0 + _27817 + 384 len ceil32(_28025)]
                            if ceil32(_28025) <= _28025:
                                mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                                require mem[_27441 + 384] == mem[_27441 + 408 len 8]
                                mem[ceil32(return_data.size) + 384] = mem[_27441 + 384]
                                require mem[_27441 + 416] == mem[_27441 + 440 len 8]
                                mem[ceil32(return_data.size) + 416] = mem[_27441 + 416]
                                require mem[_27441 + 448] == mem[_27441 + 472 len 8]
                                mem[ceil32(return_data.size) + 448] = mem[_27441 + 448]
                                require mem[_27441 + 480] == mem[_27441 + 504 len 8]
                                mem[ceil32(return_data.size) + 480] = mem[_27441 + 480]
                                require mem[_27441 + 512] == mem[_27441 + 543 len 1]
                                mem[ceil32(return_data.size) + 512] = mem[_27441 + 512]
                                _38627 = mem[_27441 + 544]
                                require mem[_27441 + 544] <= test266151307()
                                require _27441 + mem[_27441 + 544] + 383 < return_data.size + 352
                                _38943 = mem[_27441 + mem[_27441 + 544] + 352]
                                require mem[_27441 + mem[_27441 + 544] + 352] <= test266151307()
                                _39172 = mem[64]
                                require mem[64] + ceil32(mem[_27441 + mem[_27441 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_27441 + mem[_27441 + 544] + 352]) + 32 >= mem[64]
                                mem[64] = mem[64] + ceil32(mem[_27441 + mem[_27441 + 544] + 352]) + 32
                                mem[_39172] = mem[_27441 + mem[_27441 + 544] + 352]
                                require _27441 + _38627 + _38943 + 32 <= return_data.size
                                mem[_39172 + 32 len ceil32(_38943)] = mem[_27441 + _38627 + 384 len ceil32(_38943)]
                                if ceil32(_38943) <= _38943:
                                    mem[ceil32(return_data.size) + 544] = _39172
                                    require '' == ''
                                    _43884 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_43884] = 0
                                    _43908 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_43908] = 0
                                    mem[_43908 + 32] = 96
                                    _43933 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_43933] = 0
                                    mem[_43933 + 32] = 96
                                    _43946 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_43946] = 0
                                    mem[_43946 + 32] = _39172
                                    if mem[_39172] < 1:
                                        revert with 0, 'Obi: Out of range'
                                    if 0 < mem[_39172]:
                                        mem[_43946] = 1
                                        if mem[_39172] < 2:
                                            revert with 0, 'Obi: Out of range'
                                        if 1 < mem[_39172]:
                                            mem[_43946] = 2
                                            if mem[_39172] < 3:
                                                revert with 0, 'Obi: Out of range'
                                            if 2 < mem[_39172]:
                                                mem[_43946] = 3
                                                if mem[_39172] < 4:
                                                    revert with 0, 'Obi: Out of range'
                                                if 3 < mem[_39172]:
                                                    mem[_43946] = 4
                                                    if mem[_39172] < 5:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 4 < mem[_39172]:
                                                        mem[_43946] = 5
                                                        if mem[_39172] < 6:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 5 < mem[_39172]:
                                                            mem[_43946] = 6
                                                            if mem[_39172] < 7:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 6 < mem[_39172]:
                                                                mem[_43946] = 7
                                                                if mem[_39172] < 8:
                                                                    revert with 0, 'Obi: Out of range'
                                                                if 7 < mem[_39172]:
                                                                    return 0
                                else:
                                    mem[_39172 + _38943 + 32] = 0
                                    mem[ceil32(return_data.size) + 544] = _39172
                                    require '' == ''
                                    _43896 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_43896] = 0
                                    _43920 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_43920] = 0
                                    mem[_43920 + 32] = 96
                                    _43947 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_43947] = 0
                                    mem[_43947 + 32] = 96
                                    _43970 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_43970] = 0
                                    mem[_43970 + 32] = _39172
                                    if mem[_39172] < 1:
                                        revert with 0, 'Obi: Out of range'
                                    if 0 < mem[_39172]:
                                        mem[_43970] = 1
                                        if mem[_39172] < 2:
                                            revert with 0, 'Obi: Out of range'
                                        if 1 < mem[_39172]:
                                            mem[_43970] = 2
                                            if mem[_39172] < 3:
                                                revert with 0, 'Obi: Out of range'
                                            if 2 < mem[_39172]:
                                                mem[_43970] = 3
                                                if mem[_39172] < 4:
                                                    revert with 0, 'Obi: Out of range'
                                                if 3 < mem[_39172]:
                                                    mem[_43970] = 4
                                                    if mem[_39172] < 5:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 4 < mem[_39172]:
                                                        mem[_43970] = 5
                                                        if mem[_39172] < 6:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 5 < mem[_39172]:
                                                            mem[_43970] = 6
                                                            if mem[_39172] < 7:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 6 < mem[_39172]:
                                                                mem[_43970] = 7
                                                                if mem[_39172] < 8:
                                                                    revert with 0, 'Obi: Out of range'
                                                                if 7 < mem[_39172]:
                                                                    return 0
                            else:
                                mem[ceil32(return_data.size) + _28025 + 608] = 0
                                mem[ceil32(return_data.size) + 352] = ceil32(return_data.size) + 576
                                require mem[_27441 + 384] == mem[_27441 + 408 len 8]
                                mem[ceil32(return_data.size) + 384] = mem[_27441 + 384]
                                require mem[_27441 + 416] == mem[_27441 + 440 len 8]
                                mem[ceil32(return_data.size) + 416] = mem[_27441 + 416]
                                require mem[_27441 + 448] == mem[_27441 + 472 len 8]
                                mem[ceil32(return_data.size) + 448] = mem[_27441 + 448]
                                require mem[_27441 + 480] == mem[_27441 + 504 len 8]
                                mem[ceil32(return_data.size) + 480] = mem[_27441 + 480]
                                require mem[_27441 + 512] == mem[_27441 + 543 len 1]
                                mem[ceil32(return_data.size) + 512] = mem[_27441 + 512]
                                _38685 = mem[_27441 + 544]
                                require mem[_27441 + 544] <= test266151307()
                                require _27441 + mem[_27441 + 544] + 383 < return_data.size + 352
                                _39082 = mem[_27441 + mem[_27441 + 544] + 352]
                                require mem[_27441 + mem[_27441 + 544] + 352] <= test266151307()
                                _39182 = mem[64]
                                require mem[64] + ceil32(mem[_27441 + mem[_27441 + 544] + 352]) + 32 <= test266151307() and mem[64] + ceil32(mem[_27441 + mem[_27441 + 544] + 352]) + 32 >= mem[64]
                                mem[64] = mem[64] + ceil32(mem[_27441 + mem[_27441 + 544] + 352]) + 32
                                mem[_39182] = mem[_27441 + mem[_27441 + 544] + 352]
                                require _27441 + _38685 + _39082 + 32 <= return_data.size
                                mem[_39182 + 32 len ceil32(_39082)] = mem[_27441 + _38685 + 384 len ceil32(_39082)]
                                if ceil32(_39082) <= _39082:
                                    mem[ceil32(return_data.size) + 544] = _39182
                                    require '' == ''
                                    _43885 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_43885] = 0
                                    _43909 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_43909] = 0
                                    mem[_43909 + 32] = 96
                                    _43934 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_43934] = 0
                                    mem[_43934 + 32] = 96
                                    _43948 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_43948] = 0
                                    mem[_43948 + 32] = _39182
                                    if mem[_39182] < 1:
                                        revert with 0, 'Obi: Out of range'
                                    if 0 < mem[_39182]:
                                        mem[_43948] = 1
                                        if mem[_39182] < 2:
                                            revert with 0, 'Obi: Out of range'
                                        if 1 < mem[_39182]:
                                            mem[_43948] = 2
                                            if mem[_39182] < 3:
                                                revert with 0, 'Obi: Out of range'
                                            if 2 < mem[_39182]:
                                                mem[_43948] = 3
                                                if mem[_39182] < 4:
                                                    revert with 0, 'Obi: Out of range'
                                                if 3 < mem[_39182]:
                                                    mem[_43948] = 4
                                                    if mem[_39182] < 5:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 4 < mem[_39182]:
                                                        mem[_43948] = 5
                                                        if mem[_39182] < 6:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 5 < mem[_39182]:
                                                            mem[_43948] = 6
                                                            if mem[_39182] < 7:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 6 < mem[_39182]:
                                                                mem[_43948] = 7
                                                                if mem[_39182] < 8:
                                                                    revert with 0, 'Obi: Out of range'
                                                                if 7 < mem[_39182]:
                                                                    return 0
                                else:
                                    mem[_39182 + _39082 + 32] = 0
                                    mem[ceil32(return_data.size) + 544] = _39182
                                    require '' == ''
                                    _43897 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_43897] = 0
                                    _43921 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_43921] = 0
                                    mem[_43921 + 32] = 96
                                    _43949 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_43949] = 0
                                    mem[_43949 + 32] = 96
                                    _43971 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_43971] = 0
                                    mem[_43971 + 32] = _39182
                                    if mem[_39182] < 1:
                                        revert with 0, 'Obi: Out of range'
                                    if 0 < mem[_39182]:
                                        mem[_43971] = 1
                                        if mem[_39182] < 2:
                                            revert with 0, 'Obi: Out of range'
                                        if 1 < mem[_39182]:
                                            mem[_43971] = 2
                                            if mem[_39182] < 3:
                                                revert with 0, 'Obi: Out of range'
                                            if 2 < mem[_39182]:
                                                mem[_43971] = 3
                                                if mem[_39182] < 4:
                                                    revert with 0, 'Obi: Out of range'
                                                if 3 < mem[_39182]:
                                                    mem[_43971] = 4
                                                    if mem[_39182] < 5:
                                                        revert with 0, 'Obi: Out of range'
                                                    if 4 < mem[_39182]:
                                                        mem[_43971] = 5
                                                        if mem[_39182] < 6:
                                                            revert with 0, 'Obi: Out of range'
                                                        if 5 < mem[_39182]:
                                                            mem[_43971] = 6
                                                            if mem[_39182] < 7:
                                                                revert with 0, 'Obi: Out of range'
                                                            if 6 < mem[_39182]:
                                                                mem[_43971] = 7
                                                                if mem[_39182] < 8:
                                                                    revert with 0, 'Obi: Out of range'
                                                                if 7 < mem[_39182]:
                                                                    return 0
    revert
}



}
