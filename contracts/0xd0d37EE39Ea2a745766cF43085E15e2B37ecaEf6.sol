contract main {




// =====================  Runtime code  =====================


#
#  - sub_69c2d984(?)
#  - sub_b4f713ce(?)
#
address stor0;

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == stor0:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg2.length >= 32
    _3 = mem[128]
    require mem[128] <= test266151307()
    require arg2.length - mem[128] >= 96
    require bool(ceil32(arg2.length) + 224 <= test266151307())
    mem[64] = ceil32(arg2.length) + 224
    _5 = mem[mem[128] + 128]
    require mem[mem[128] + 128] <= test266151307()
    require mem[128] + mem[mem[128] + 128] + 159 < arg2.length + 128
    _6 = mem[mem[128] + mem[mem[128] + 128] + 128]
    require mem[mem[128] + mem[mem[128] + 128] + 128] <= test266151307()
    require (32 * mem[mem[128] + mem[mem[128] + 128] + 128]) + 256 >= 224 and ceil32(arg2.length) + (32 * mem[mem[128] + mem[mem[128] + 128] + 128]) + 256 <= test266151307()
    mem[64] = ceil32(arg2.length) + (32 * mem[mem[128] + mem[mem[128] + 128] + 128]) + 256
    mem[ceil32(arg2.length) + 224] = _6
    require arg2.length + 32 >= mem[128] + _5 + (32 * _6) + 64
    mem[ceil32(arg2.length) + 256 len 32 * _6] = mem[mem[128] + _5 + 160 len 32 * _6]
    mem[ceil32(arg2.length) + 128] = ceil32(arg2.length) + 224
    _141 = mem[_3 + 160]
    require mem[_3 + 160] <= test266151307()
    require _3 + mem[_3 + 160] + 159 < arg2.length + 128
    _142 = mem[_3 + mem[_3 + 160] + 128]
    require mem[_3 + mem[_3 + 160] + 128] <= test266151307()
    _143 = mem[64]
    require mem[64] + (32 * mem[_3 + mem[_3 + 160] + 128]) + 32 >= mem[64] and mem[64] + (32 * mem[_3 + mem[_3 + 160] + 128]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_3 + mem[_3 + 160] + 128]) + 32
    mem[_143] = _142
    require arg2.length + 32 >= _3 + _141 + (32 * _142) + 64
    idx = 0
    s = _3 + _141 + 160
    t = _143 + 32
    while idx < _142:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg2.length) + 160] = _143
    _273 = mem[_3 + 192]
    require mem[_3 + 192] <= test266151307()
    require _3 + mem[_3 + 192] + 159 < arg2.length + 128
    _274 = mem[_3 + mem[_3 + 192] + 128]
    require mem[_3 + mem[_3 + 192] + 128] <= test266151307()
    _275 = mem[64]
    require mem[64] + (32 * mem[_3 + mem[_3 + 192] + 128]) + 32 >= mem[64] and mem[64] + (32 * mem[_3 + mem[_3 + 192] + 128]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_3 + mem[_3 + 192] + 128]) + 32
    mem[_275] = mem[_3 + mem[_3 + 192] + 128]
    require arg2.length + 32 >= _3 + _273 + (32 * _274) + 64
    idx = 0
    s = _3 + _273 + 160
    t = _275 + 32
    while idx < _274:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg2.length) + 192] = _275
    require 1 < mem[_275]
    _403 = mem[_275 + 64]
    require 1 < mem[mem[ceil32(arg2.length) + 160]]
    require 1 < mem[mem[ceil32(arg2.length) + 128]]
    _409 = mem[mem[ceil32(arg2.length) + 128] + 64]
    mem[mem[64] + 4] = mem[mem[ceil32(arg2.length) + 160] + 76 len 20]
    mem[mem[64] + 36] = _409
    require ext_code.size(address(_403))
    call address(_403).0xa9059cbb with:
         gas gas_remaining wei
        args mem[mem[64] + 4], _409
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _412 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_412] == bool(mem[_412])
    _525 = mem[mem[ceil32(arg2.length) + 160]]
    idx = 1
    while idx < _525:
        if idx + 1 < mem[mem[ceil32(arg2.length) + 160]]:
            require idx + 1 < mem[mem[ceil32(arg2.length) + 192]]
            require idx < mem[mem[ceil32(arg2.length) + 192]]
            require idx + 1 < mem[mem[ceil32(arg2.length) + 128]]
            if mem[(32 * idx) + mem[ceil32(arg2.length) + 192] + 44 len 20] < mem[(32 * idx + 1) + mem[ceil32(arg2.length) + 192] + 44 len 20]:
                _556 = mem[(32 * idx + 1) + mem[ceil32(arg2.length) + 128] + 32]
                require idx < mem[mem[ceil32(arg2.length) + 160]]
                _569 = mem[(32 * idx) + mem[ceil32(arg2.length) + 160] + 32]
                if idx + 1 >= mem[mem[ceil32(arg2.length) + 160]]:
                    _591 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_591 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_591 + 36] = 0
                    mem[_591 + 68] = _556
                    mem[_591 + 100] = this.address
                    mem[_591 + 132] = 128
                    mem[_591 + 164] = mem[_591]
                    s = 0
                    while s < mem[_591]:
                        mem[s + _591 + 196] = mem[s + _591 + 32]
                        _525 = mem[mem[ceil32(arg2.length) + 160]]
                        s = s + 32
                        continue 
                    if ceil32(mem[_591]) > mem[_591]:
                        mem[_591 + mem[_591] + 196] = 0
                    require ext_code.size(address(_569))
                    call address(_569).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _556, address(this.address), 128, mem[_591], mem[_591 + 196 len ceil32(mem[_591])]
                else:
                    require idx + 1 < mem[mem[ceil32(arg2.length) + 160]]
                    _590 = mem[(32 * idx + 1) + mem[ceil32(arg2.length) + 160] + 32]
                    _598 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_598 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_598 + 36] = 0
                    mem[_598 + 68] = _556
                    mem[_598 + 100] = address(_590)
                    mem[_598 + 132] = 128
                    mem[_598 + 164] = mem[_598]
                    s = 0
                    while s < mem[_598]:
                        mem[s + _598 + 196] = mem[s + _598 + 32]
                        _525 = mem[mem[ceil32(arg2.length) + 160]]
                        s = s + 32
                        continue 
                    if ceil32(mem[_598]) > mem[_598]:
                        mem[_598 + mem[_598] + 196] = 0
                    require ext_code.size(address(_569))
                    call address(_569).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _556, address(_590), 128, mem[_598], mem[_598 + 196 len ceil32(mem[_598])]
            else:
                _557 = mem[(32 * idx + 1) + mem[ceil32(arg2.length) + 128] + 32]
                require idx < mem[mem[ceil32(arg2.length) + 160]]
                _572 = mem[(32 * idx) + mem[ceil32(arg2.length) + 160] + 32]
                if idx + 1 >= mem[mem[ceil32(arg2.length) + 160]]:
                    _593 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_593 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_593 + 36] = _557
                    mem[_593 + 68] = 0
                    mem[_593 + 100] = this.address
                    mem[_593 + 132] = 128
                    mem[_593 + 164] = mem[_593]
                    s = 0
                    while s < mem[_593]:
                        mem[s + _593 + 196] = mem[s + _593 + 32]
                        _525 = mem[mem[ceil32(arg2.length) + 160]]
                        s = s + 32
                        continue 
                    if ceil32(mem[_593]) > mem[_593]:
                        mem[_593 + mem[_593] + 196] = 0
                    require ext_code.size(address(_572))
                    call address(_572).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _557, 0, address(this.address), 128, mem[_593], mem[_593 + 196 len ceil32(mem[_593])]
                else:
                    require idx + 1 < mem[mem[ceil32(arg2.length) + 160]]
                    _592 = mem[(32 * idx + 1) + mem[ceil32(arg2.length) + 160] + 32]
                    _600 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_600 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_600 + 36] = _557
                    mem[_600 + 68] = 0
                    mem[_600 + 100] = address(_592)
                    mem[_600 + 132] = 128
                    mem[_600 + 164] = mem[_600]
                    s = 0
                    while s < mem[_600]:
                        mem[s + _600 + 196] = mem[s + _600 + 32]
                        _525 = mem[mem[ceil32(arg2.length) + 160]]
                        s = s + 32
                        continue 
                    if ceil32(mem[_600]) > mem[_600]:
                        mem[_600 + mem[_600] + 196] = 0
                    require ext_code.size(address(_572))
                    call address(_572).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_600]) + _600 + -mem[64] + 192]
        else:
            require 0 < mem[mem[ceil32(arg2.length) + 192]]
            require idx < mem[mem[ceil32(arg2.length) + 192]]
            require idx + 1 < mem[mem[ceil32(arg2.length) + 128]]
            if mem[(32 * idx) + mem[ceil32(arg2.length) + 192] + 44 len 20] < mem[mem[ceil32(arg2.length) + 192] + 44 len 20]:
                _558 = mem[(32 * idx + 1) + mem[ceil32(arg2.length) + 128] + 32]
                require idx < mem[mem[ceil32(arg2.length) + 160]]
                _575 = mem[(32 * idx) + mem[ceil32(arg2.length) + 160] + 32]
                if idx + 1 >= mem[mem[ceil32(arg2.length) + 160]]:
                    _595 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_595 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_595 + 36] = 0
                    mem[_595 + 68] = _558
                    mem[_595 + 100] = this.address
                    mem[_595 + 132] = 128
                    mem[_595 + 164] = mem[_595]
                    s = 0
                    while s < mem[_595]:
                        mem[s + _595 + 196] = mem[s + _595 + 32]
                        _525 = mem[mem[ceil32(arg2.length) + 160]]
                        s = s + 32
                        continue 
                    if ceil32(mem[_595]) > mem[_595]:
                        mem[_595 + mem[_595] + 196] = 0
                    require ext_code.size(address(_575))
                    call address(_575).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_595]) + _595 + -mem[64] + 192]
                else:
                    require idx + 1 < mem[mem[ceil32(arg2.length) + 160]]
                    _594 = mem[(32 * idx + 1) + mem[ceil32(arg2.length) + 160] + 32]
                    _602 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_602 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_602 + 36] = 0
                    mem[_602 + 68] = _558
                    mem[_602 + 100] = address(_594)
                    mem[_602 + 132] = 128
                    mem[_602 + 164] = mem[_602]
                    s = 0
                    while s < mem[_602]:
                        mem[s + _602 + 196] = mem[s + _602 + 32]
                        _525 = mem[mem[ceil32(arg2.length) + 160]]
                        s = s + 32
                        continue 
                    if ceil32(mem[_602]) > mem[_602]:
                        mem[_602 + mem[_602] + 196] = 0
                    require ext_code.size(address(_575))
                    call address(_575).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _558, address(_594), 128, mem[_602], mem[_602 + 196 len ceil32(mem[_602])]
            else:
                _559 = mem[(32 * idx + 1) + mem[ceil32(arg2.length) + 128] + 32]
                require idx < mem[mem[ceil32(arg2.length) + 160]]
                _578 = mem[(32 * idx) + mem[ceil32(arg2.length) + 160] + 32]
                if idx + 1 >= mem[mem[ceil32(arg2.length) + 160]]:
                    _597 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_597 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_597 + 36] = _559
                    mem[_597 + 68] = 0
                    mem[_597 + 100] = this.address
                    mem[_597 + 132] = 128
                    mem[_597 + 164] = mem[_597]
                    s = 0
                    while s < mem[_597]:
                        mem[s + _597 + 196] = mem[s + _597 + 32]
                        _525 = mem[mem[ceil32(arg2.length) + 160]]
                        s = s + 32
                        continue 
                    if ceil32(mem[_597]) > mem[_597]:
                        mem[_597 + mem[_597] + 196] = 0
                    require ext_code.size(address(_578))
                    call address(_578).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _559, 0, address(this.address), 128, mem[_597], mem[_597 + 196 len ceil32(mem[_597])]
                else:
                    require idx + 1 < mem[mem[ceil32(arg2.length) + 160]]
                    _596 = mem[(32 * idx + 1) + mem[ceil32(arg2.length) + 160] + 32]
                    _604 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_604 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_604 + 36] = _559
                    mem[_604 + 68] = 0
                    mem[_604 + 100] = address(_596)
                    mem[_604 + 132] = 128
                    mem[_604 + 164] = mem[_604]
                    s = 0
                    while s < mem[_604]:
                        mem[s + _604 + 196] = mem[s + _604 + 32]
                        _525 = mem[mem[ceil32(arg2.length) + 160]]
                        s = s + 32
                        continue 
                    if ceil32(mem[_604]) > mem[_604]:
                        mem[_604 + mem[_604] + 196] = 0
                    require ext_code.size(address(_578))
                    call address(_578).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_604]) + _604 + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _525 = mem[mem[ceil32(arg2.length) + 160]]
        idx = idx + 1
        continue 
    require 0 < mem[mem[ceil32(arg2.length) + 192]]
    _531 = mem[mem[ceil32(arg2.length) + 192] + 32]
    require 0 < mem[mem[ceil32(arg2.length) + 128]]
    _534 = mem[mem[ceil32(arg2.length) + 128] + 32]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _534
    require ext_code.size(address(_531))
    call address(_531).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _534
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _555 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_555] == bool(mem[_555])
    return memory
      from 128
       len mem[96]
}

function sub_0e64fe49(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require 4 * ('cd', 4).length <= test266151307()
    mem[96] = 4 * ('cd', 4).length
    mem[64] = (128 * ('cd', 4).length) + 128
    if not Mask(254, 0, ('cd', 4).length):
        idx = 0
        while idx < ('cd', 4).length:
            _124 = mem[64]
            mem[mem[64]] = 6
            mem[64] = mem[64] + 224
            require 0 < mem[_124]
            mem[_124 + 32] = Mask(112, 0, cd[((32 * idx) + cd[4] + 36)])
            require 1 < mem[_124]
            mem[_124 + 64] = Mask(32, 112, cd[((32 * idx) + cd[4] + 36)]) >> 112
            require 2 < mem[_124]
            mem[_124 + 96] = 0
            require 3 < mem[_124]
            mem[_124 + 128] = 0
            require 4 < mem[_124]
            mem[_124 + 160] = 0
            require 5 < mem[_124]
            mem[_124 + 192] = 0
            require 0 < mem[_124]
            require 4 * idx < mem[96]
            mem[(128 * idx) + 128] = Mask(112, 0, cd[((32 * idx) + cd[4] + 36)])
            require 2 < mem[_124]
            if var80003 >= 0:
                idx = idx + 1
                continue 
            require (2 * var82004) + 1 < ('cd', 36).length
            require cd[((32 * var84001) + cd[36] + 36)] == address(cd[((32 * var84001) + cd[36] + 36)])
            require 2 * var84008 < ('cd', 36).length
            require cd[((64 * var84008) + cd[36] + 36)] == address(cd[((64 * var84008) + cd[36] + 36)])
            require 2 < mem[_124]
            if var84005 + 1 < 0:
                if 2 * var84008 + 1 < ('cd', 36).length:
                    require cd[((64 * var84008 + 1) + cd[36] + 36)] == address(cd[((64 * var84008 + 1) + cd[36] + 36)])
                    if (4 * idx) + var84005 < mem[96]:
                        _606 = mem[(32 * (4 * idx) + var84005) + 128]
                        if var84005 + 3 < mem[_124]:
                            _612 = mem[(32 * var84005 + 3) + _124 + 32]
                            require ext_code.size(address(cd[((32 * var84001) + cd[36] + 36)]))
                            staticcall address(cd[((32 * var84001) + cd[36] + 36)]).getReserves() with:
                                    gas gas_remaining wei
                            mem[_124 + 224 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _124 + ceil32(return_data.size) + 224
                            require return_data.size >= 96
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if address(cd[((64 * var84008) + cd[36] + 36)]) < address(cd[((64 * var84008 + 1) + cd[36] + 36)]):
                                if address(cd[((64 * var84008) + cd[36] + 36)]) == address(cd[((64 * var84008) + cd[36] + 36)]):
                                    if (ext_call.return_data[0] * _612) + (10000 * ext_call.return_data[0]) + (10000 * _606) - (ext_call.return_data[0] * _612) - (_606 * _612):
                                        if (4 * idx) + var84005 + 1 < mem[96]:
                                            mem[(32 * (4 * idx) + var84005 + 1) + 128] = (_612 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * _606 * ext_call.return_data[32]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[32] * _612) - (_606 * ext_call.return_data[32] * _612) / (ext_call.return_data[0] * _612) + (10000 * ext_call.return_data[0]) + (10000 * _606) - (ext_call.return_data[0] * _612) - (_606 * _612)
                                            if 2 < mem[_124]:
                                                if var84005 + 1 >= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if (2 * var84008 + 1) + 1 < ('cd', 36).length:
                                                    var84001 = (2 * var84008 + 1) + 1
                                                    var84005 = var84005 + 1
                                                    var84008 = var84008 + 1
                                                    continue 
                                else:
                                    if (ext_call.return_data[32] * _612) + (10000 * ext_call.return_data[32]) + (10000 * _606) - (ext_call.return_data[32] * _612) - (_606 * _612):
                                        if (4 * idx) + var84005 + 1 < mem[96]:
                                            mem[(32 * (4 * idx) + var84005 + 1) + 128] = (_612 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * _606 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[32] * ext_call.return_data[0] * _612) - (_606 * ext_call.return_data[0] * _612) / (ext_call.return_data[32] * _612) + (10000 * ext_call.return_data[32]) + (10000 * _606) - (ext_call.return_data[32] * _612) - (_606 * _612)
                                            if 2 < mem[_124]:
                                                if var84005 + 1 >= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if (2 * var84008 + 1) + 1 < ('cd', 36).length:
                                                    var84001 = (2 * var84008 + 1) + 1
                                                    var84005 = var84005 + 1
                                                    var84008 = var84008 + 1
                                                    continue 
                            else:
                                if address(cd[((64 * var84008) + cd[36] + 36)]) == address(cd[((64 * var84008 + 1) + cd[36] + 36)]):
                                    if (ext_call.return_data[0] * _612) + (10000 * ext_call.return_data[0]) + (10000 * _606) - (ext_call.return_data[0] * _612) - (_606 * _612):
                                        if (4 * idx) + var84005 + 1 < mem[96]:
                                            mem[(32 * (4 * idx) + var84005 + 1) + 128] = (_612 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * _606 * ext_call.return_data[32]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[32] * _612) - (_606 * ext_call.return_data[32] * _612) / (ext_call.return_data[0] * _612) + (10000 * ext_call.return_data[0]) + (10000 * _606) - (ext_call.return_data[0] * _612) - (_606 * _612)
                                            if 2 < mem[_124]:
                                                if var84005 + 1 >= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if (2 * var84008 + 1) + 1 < ('cd', 36).length:
                                                    var84001 = (2 * var84008 + 1) + 1
                                                    var84005 = var84005 + 1
                                                    var84008 = var84008 + 1
                                                    continue 
                                else:
                                    if (ext_call.return_data[32] * _612) + (10000 * ext_call.return_data[32]) + (10000 * _606) - (ext_call.return_data[32] * _612) - (_606 * _612):
                                        if (4 * idx) + var84005 + 1 < mem[96]:
                                            mem[(32 * (4 * idx) + var84005 + 1) + 128] = (_612 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * _606 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[32] * ext_call.return_data[0] * _612) - (_606 * ext_call.return_data[0] * _612) / (ext_call.return_data[32] * _612) + (10000 * ext_call.return_data[32]) + (10000 * _606) - (ext_call.return_data[32] * _612) - (_606 * _612)
                                            if 2 < mem[_124]:
                                                if var84005 + 1 >= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if (2 * var84008 + 1) + 1 < ('cd', 36).length:
                                                    var84001 = (2 * var84008 + 1) + 1
                                                    var84005 = var84005 + 1
                                                    var84008 = var84008 + 1
                                                    continue 
            else:
                if 2 < mem[_124]:
                    if 2 * var84008 + 1 < ('cd', 36).length:
                        require cd[((64 * var84008 + 1) + cd[36] + 36)] == address(cd[((64 * var84008 + 1) + cd[36] + 36)])
                        if (4 * idx) + var84005 < mem[96]:
                            _613 = mem[(32 * (4 * idx) + var84005) + 128]
                            if var84005 + 3 < mem[_124]:
                                _618 = mem[(32 * var84005 + 3) + _124 + 32]
                                require ext_code.size(address(cd[((32 * var84001) + cd[36] + 36)]))
                                staticcall address(cd[((32 * var84001) + cd[36] + 36)]).getReserves() with:
                                        gas gas_remaining wei
                                mem[_124 + 224 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _124 + ceil32(return_data.size) + 224
                                require return_data.size >= 96
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if address(cd[((64 * var84008) + cd[36] + 36)]) < address(cd[((64 * var84008 + 1) + cd[36] + 36)]):
                                    if address(cd[((64 * var84008) + cd[36] + 36)]) == address(cd[((64 * var84008) + cd[36] + 36)]):
                                        if (ext_call.return_data[0] * _618) + (10000 * ext_call.return_data[0]) + (10000 * _613) - (ext_call.return_data[0] * _618) - (_613 * _618):
                                            if (4 * idx) + var84005 + 1 < mem[96]:
                                                mem[(32 * (4 * idx) + var84005 + 1) + 128] = (_618 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * _613 * ext_call.return_data[32]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[32] * _618) - (_613 * ext_call.return_data[32] * _618) / (ext_call.return_data[0] * _618) + (10000 * ext_call.return_data[0]) + (10000 * _613) - (ext_call.return_data[0] * _618) - (_613 * _618)
                                                if 2 < mem[_124]:
                                                    if var84005 + 1 >= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    if (2 * var84008 + 1) + 1 < ('cd', 36).length:
                                                        var84001 = (2 * var84008 + 1) + 1
                                                        var84005 = var84005 + 1
                                                        var84008 = var84008 + 1
                                                        continue 
                                    else:
                                        if (ext_call.return_data[32] * _618) + (10000 * ext_call.return_data[32]) + (10000 * _613) - (ext_call.return_data[32] * _618) - (_613 * _618):
                                            if (4 * idx) + var84005 + 1 < mem[96]:
                                                mem[(32 * (4 * idx) + var84005 + 1) + 128] = (_618 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * _613 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[32] * ext_call.return_data[0] * _618) - (_613 * ext_call.return_data[0] * _618) / (ext_call.return_data[32] * _618) + (10000 * ext_call.return_data[32]) + (10000 * _613) - (ext_call.return_data[32] * _618) - (_613 * _618)
                                                if 2 < mem[_124]:
                                                    if var84005 + 1 >= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    if (2 * var84008 + 1) + 1 < ('cd', 36).length:
                                                        var84001 = (2 * var84008 + 1) + 1
                                                        var84005 = var84005 + 1
                                                        var84008 = var84008 + 1
                                                        continue 
                                else:
                                    if address(cd[((64 * var84008) + cd[36] + 36)]) == address(cd[((64 * var84008 + 1) + cd[36] + 36)]):
                                        if (ext_call.return_data[0] * _618) + (10000 * ext_call.return_data[0]) + (10000 * _613) - (ext_call.return_data[0] * _618) - (_613 * _618):
                                            if (4 * idx) + var84005 + 1 < mem[96]:
                                                mem[(32 * (4 * idx) + var84005 + 1) + 128] = (_618 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * _613 * ext_call.return_data[32]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[32] * _618) - (_613 * ext_call.return_data[32] * _618) / (ext_call.return_data[0] * _618) + (10000 * ext_call.return_data[0]) + (10000 * _613) - (ext_call.return_data[0] * _618) - (_613 * _618)
                                                if 2 < mem[_124]:
                                                    if var84005 + 1 >= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    if (2 * var84008 + 1) + 1 < ('cd', 36).length:
                                                        var84001 = (2 * var84008 + 1) + 1
                                                        var84005 = var84005 + 1
                                                        var84008 = var84008 + 1
                                                        continue 
                                    else:
                                        if (ext_call.return_data[32] * _618) + (10000 * ext_call.return_data[32]) + (10000 * _613) - (ext_call.return_data[32] * _618) - (_613 * _618):
                                            if (4 * idx) + var84005 + 1 < mem[96]:
                                                mem[(32 * (4 * idx) + var84005 + 1) + 128] = (_618 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * _613 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[32] * ext_call.return_data[0] * _618) - (_613 * ext_call.return_data[0] * _618) / (ext_call.return_data[32] * _618) + (10000 * ext_call.return_data[32]) + (10000 * _613) - (ext_call.return_data[32] * _618) - (_613 * _618)
                                                if 2 < mem[_124]:
                                                    if var84005 + 1 >= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    if (2 * var84008 + 1) + 1 < ('cd', 36).length:
                                                        var84001 = (2 * var84008 + 1) + 1
                                                        var84005 = var84005 + 1
                                                        var84008 = var84008 + 1
                                                        continue 
            revert
    else:
        mem[128 len 128 * ('cd', 4).length] = call.data[calldata.size len 128 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            _126 = mem[64]
            mem[mem[64]] = 6
            mem[64] = mem[64] + 224
            require 0 < mem[_126]
            mem[_126 + 32] = Mask(112, 0, cd[((32 * idx) + cd[4] + 36)])
            require 1 < mem[_126]
            mem[_126 + 64] = Mask(32, 112, cd[((32 * idx) + cd[4] + 36)]) >> 112
            require 2 < mem[_126]
            mem[_126 + 96] = 0
            require 3 < mem[_126]
            mem[_126 + 128] = 0
            require 4 < mem[_126]
            mem[_126 + 160] = 0
            require 5 < mem[_126]
            mem[_126 + 192] = 0
            require 0 < mem[_126]
            require 4 * idx < mem[96]
            mem[(128 * idx) + 128] = Mask(112, 0, cd[((32 * idx) + cd[4] + 36)])
            require 2 < mem[_126]
            if var81003 >= 0:
                idx = idx + 1
                continue 
            require (2 * var83004) + 1 < ('cd', 36).length
            require cd[((32 * var85001) + cd[36] + 36)] == address(cd[((32 * var85001) + cd[36] + 36)])
            require 2 * var85008 < ('cd', 36).length
            require cd[((64 * var85008) + cd[36] + 36)] == address(cd[((64 * var85008) + cd[36] + 36)])
            require 2 < mem[_126]
            if var85005 + 1 < 0:
                if 2 * var85008 + 1 < ('cd', 36).length:
                    require cd[((64 * var85008 + 1) + cd[36] + 36)] == address(cd[((64 * var85008 + 1) + cd[36] + 36)])
                    if (4 * idx) + var85005 < mem[96]:
                        _609 = mem[(32 * (4 * idx) + var85005) + 128]
                        if var85005 + 3 < mem[_126]:
                            _615 = mem[(32 * var85005 + 3) + _126 + 32]
                            require ext_code.size(address(cd[((32 * var85001) + cd[36] + 36)]))
                            staticcall address(cd[((32 * var85001) + cd[36] + 36)]).getReserves() with:
                                    gas gas_remaining wei
                            mem[_126 + 224 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _126 + ceil32(return_data.size) + 224
                            require return_data.size >= 96
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if address(cd[((64 * var85008) + cd[36] + 36)]) < address(cd[((64 * var85008 + 1) + cd[36] + 36)]):
                                if address(cd[((64 * var85008) + cd[36] + 36)]) == address(cd[((64 * var85008) + cd[36] + 36)]):
                                    if (ext_call.return_data[0] * _615) + (10000 * ext_call.return_data[0]) + (10000 * _609) - (ext_call.return_data[0] * _615) - (_609 * _615):
                                        if (4 * idx) + var85005 + 1 < mem[96]:
                                            mem[(32 * (4 * idx) + var85005 + 1) + 128] = (_615 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * _609 * ext_call.return_data[32]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[32] * _615) - (_609 * ext_call.return_data[32] * _615) / (ext_call.return_data[0] * _615) + (10000 * ext_call.return_data[0]) + (10000 * _609) - (ext_call.return_data[0] * _615) - (_609 * _615)
                                            if 2 < mem[_126]:
                                                if var85005 + 1 >= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if (2 * var85008 + 1) + 1 < ('cd', 36).length:
                                                    var85001 = (2 * var85008 + 1) + 1
                                                    var85005 = var85005 + 1
                                                    var85008 = var85008 + 1
                                                    continue 
                                else:
                                    if (ext_call.return_data[32] * _615) + (10000 * ext_call.return_data[32]) + (10000 * _609) - (ext_call.return_data[32] * _615) - (_609 * _615):
                                        if (4 * idx) + var85005 + 1 < mem[96]:
                                            mem[(32 * (4 * idx) + var85005 + 1) + 128] = (_615 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * _609 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[32] * ext_call.return_data[0] * _615) - (_609 * ext_call.return_data[0] * _615) / (ext_call.return_data[32] * _615) + (10000 * ext_call.return_data[32]) + (10000 * _609) - (ext_call.return_data[32] * _615) - (_609 * _615)
                                            if 2 < mem[_126]:
                                                if var85005 + 1 >= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if (2 * var85008 + 1) + 1 < ('cd', 36).length:
                                                    var85001 = (2 * var85008 + 1) + 1
                                                    var85005 = var85005 + 1
                                                    var85008 = var85008 + 1
                                                    continue 
                            else:
                                if address(cd[((64 * var85008) + cd[36] + 36)]) == address(cd[((64 * var85008 + 1) + cd[36] + 36)]):
                                    if (ext_call.return_data[0] * _615) + (10000 * ext_call.return_data[0]) + (10000 * _609) - (ext_call.return_data[0] * _615) - (_609 * _615):
                                        if (4 * idx) + var85005 + 1 < mem[96]:
                                            mem[(32 * (4 * idx) + var85005 + 1) + 128] = (_615 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * _609 * ext_call.return_data[32]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[32] * _615) - (_609 * ext_call.return_data[32] * _615) / (ext_call.return_data[0] * _615) + (10000 * ext_call.return_data[0]) + (10000 * _609) - (ext_call.return_data[0] * _615) - (_609 * _615)
                                            if 2 < mem[_126]:
                                                if var85005 + 1 >= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if (2 * var85008 + 1) + 1 < ('cd', 36).length:
                                                    var85001 = (2 * var85008 + 1) + 1
                                                    var85005 = var85005 + 1
                                                    var85008 = var85008 + 1
                                                    continue 
                                else:
                                    if (ext_call.return_data[32] * _615) + (10000 * ext_call.return_data[32]) + (10000 * _609) - (ext_call.return_data[32] * _615) - (_609 * _615):
                                        if (4 * idx) + var85005 + 1 < mem[96]:
                                            mem[(32 * (4 * idx) + var85005 + 1) + 128] = (_615 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * _609 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[32] * ext_call.return_data[0] * _615) - (_609 * ext_call.return_data[0] * _615) / (ext_call.return_data[32] * _615) + (10000 * ext_call.return_data[32]) + (10000 * _609) - (ext_call.return_data[32] * _615) - (_609 * _615)
                                            if 2 < mem[_126]:
                                                if var85005 + 1 >= 0:
                                                    idx = idx + 1
                                                    continue 
                                                if (2 * var85008 + 1) + 1 < ('cd', 36).length:
                                                    var85001 = (2 * var85008 + 1) + 1
                                                    var85005 = var85005 + 1
                                                    var85008 = var85008 + 1
                                                    continue 
            else:
                if 2 < mem[_126]:
                    if 2 * var85008 + 1 < ('cd', 36).length:
                        require cd[((64 * var85008 + 1) + cd[36] + 36)] == address(cd[((64 * var85008 + 1) + cd[36] + 36)])
                        if (4 * idx) + var85005 < mem[96]:
                            _616 = mem[(32 * (4 * idx) + var85005) + 128]
                            if var85005 + 3 < mem[_126]:
                                _619 = mem[(32 * var85005 + 3) + _126 + 32]
                                require ext_code.size(address(cd[((32 * var85001) + cd[36] + 36)]))
                                staticcall address(cd[((32 * var85001) + cd[36] + 36)]).getReserves() with:
                                        gas gas_remaining wei
                                mem[_126 + 224 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _126 + ceil32(return_data.size) + 224
                                require return_data.size >= 96
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if address(cd[((64 * var85008) + cd[36] + 36)]) < address(cd[((64 * var85008 + 1) + cd[36] + 36)]):
                                    if address(cd[((64 * var85008) + cd[36] + 36)]) == address(cd[((64 * var85008) + cd[36] + 36)]):
                                        if (ext_call.return_data[0] * _619) + (10000 * ext_call.return_data[0]) + (10000 * _616) - (ext_call.return_data[0] * _619) - (_616 * _619):
                                            if (4 * idx) + var85005 + 1 < mem[96]:
                                                mem[(32 * (4 * idx) + var85005 + 1) + 128] = (_619 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * _616 * ext_call.return_data[32]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[32] * _619) - (_616 * ext_call.return_data[32] * _619) / (ext_call.return_data[0] * _619) + (10000 * ext_call.return_data[0]) + (10000 * _616) - (ext_call.return_data[0] * _619) - (_616 * _619)
                                                if 2 < mem[_126]:
                                                    if var85005 + 1 >= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    if (2 * var85008 + 1) + 1 < ('cd', 36).length:
                                                        var85001 = (2 * var85008 + 1) + 1
                                                        var85005 = var85005 + 1
                                                        var85008 = var85008 + 1
                                                        continue 
                                    else:
                                        if (ext_call.return_data[32] * _619) + (10000 * ext_call.return_data[32]) + (10000 * _616) - (ext_call.return_data[32] * _619) - (_616 * _619):
                                            if (4 * idx) + var85005 + 1 < mem[96]:
                                                mem[(32 * (4 * idx) + var85005 + 1) + 128] = (_619 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * _616 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[32] * ext_call.return_data[0] * _619) - (_616 * ext_call.return_data[0] * _619) / (ext_call.return_data[32] * _619) + (10000 * ext_call.return_data[32]) + (10000 * _616) - (ext_call.return_data[32] * _619) - (_616 * _619)
                                                if 2 < mem[_126]:
                                                    if var85005 + 1 >= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    if (2 * var85008 + 1) + 1 < ('cd', 36).length:
                                                        var85001 = (2 * var85008 + 1) + 1
                                                        var85005 = var85005 + 1
                                                        var85008 = var85008 + 1
                                                        continue 
                                else:
                                    if address(cd[((64 * var85008) + cd[36] + 36)]) == address(cd[((64 * var85008 + 1) + cd[36] + 36)]):
                                        if (ext_call.return_data[0] * _619) + (10000 * ext_call.return_data[0]) + (10000 * _616) - (ext_call.return_data[0] * _619) - (_616 * _619):
                                            if (4 * idx) + var85005 + 1 < mem[96]:
                                                mem[(32 * (4 * idx) + var85005 + 1) + 128] = (_619 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * _616 * ext_call.return_data[32]) - (10000 * ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[32] * _619) - (_616 * ext_call.return_data[32] * _619) / (ext_call.return_data[0] * _619) + (10000 * ext_call.return_data[0]) + (10000 * _616) - (ext_call.return_data[0] * _619) - (_616 * _619)
                                                if 2 < mem[_126]:
                                                    if var85005 + 1 >= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    if (2 * var85008 + 1) + 1 < ('cd', 36).length:
                                                        var85001 = (2 * var85008 + 1) + 1
                                                        var85005 = var85005 + 1
                                                        var85008 = var85008 + 1
                                                        continue 
                                    else:
                                        if (ext_call.return_data[32] * _619) + (10000 * ext_call.return_data[32]) + (10000 * _616) - (ext_call.return_data[32] * _619) - (_616 * _619):
                                            if (4 * idx) + var85005 + 1 < mem[96]:
                                                mem[(32 * (4 * idx) + var85005 + 1) + 128] = (_619 * ext_call.return_data[0] * ext_call.return_data[32]) + (10000 * ext_call.return_data[32] * ext_call.return_data[0]) + (10000 * _616 * ext_call.return_data[0]) - (10000 * ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[32] * ext_call.return_data[0] * _619) - (_616 * ext_call.return_data[0] * _619) / (ext_call.return_data[32] * _619) + (10000 * ext_call.return_data[32]) + (10000 * _616) - (ext_call.return_data[32] * _619) - (_616 * _619)
                                                if 2 < mem[_126]:
                                                    if var85005 + 1 >= 0:
                                                        idx = idx + 1
                                                        continue 
                                                    if (2 * var85008 + 1) + 1 < ('cd', 36).length:
                                                        var85001 = (2 * var85008 + 1) + 1
                                                        var85005 = var85005 + 1
                                                        var85008 = var85008 + 1
                                                        continue 
            revert
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
