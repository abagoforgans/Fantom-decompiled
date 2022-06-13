contract main {




// =====================  Runtime code  =====================


address _owner;
uint256 stor1;
mapping of struct gems;

function owner() payable {
    return _owner
}

function gems(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(gems[arg1].field_0), gems[arg1].field_8
}

function _owner() payable {
    return _owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _owner = 0
    emit OwnershipTransferred(_owner, 0);
}

function sub_55cb517e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    gems[arg2].field_0 = uint8(bool(arg1))
    gems[arg2].field_8 = address(arg3)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x4e2312e000000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    _owner = arg1
    emit OwnershipTransferred(_owner, arg1);
}

function nonce(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70ae92d2 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    stor1 = 1
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    revert with 0, 'not supported'
}

function sub_bd4de891(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    mem[0] = arg2
    mem[32] = 2
    if bool(gems[arg2].field_0) != 1:
        revert with 0, 'disabled'
    mem[100] = arg2
    mem[132] = arg3
    require ext_code.size(address(arg1))
    staticcall address(arg1).luck(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg2, arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0xa1f0406d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xa1f0406d with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 288
    _11 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _12 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    require _11 + _12 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_12)] = mem[ceil32(return_data.size) + _11 + 128 len ceil32(_12)]
    if ceil32(_12) <= _12:
        _68 = uint32(arg2), mem[ceil32(return_data.size) + 132 len 28]
        require uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] <= test266151307()
        require ceil32(return_data.size) + uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
        _70 = mem[ceil32(return_data.size) + uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] + 96]
        if mem[ceil32(return_data.size) + uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        _72 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] + 96])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] + 96])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] + 96])) + 1
        mem[_72] = mem[ceil32(return_data.size) + uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] + 96]
        require _68 + _70 + 32 <= return_data.size
        mem[_72 + 32 len ceil32(_70)] = mem[ceil32(return_data.size) + _68 + 128 len ceil32(_70)]
        if ceil32(_70) <= _70:
            require mem[ceil32(return_data.size) + 160] == mem[ceil32(return_data.size) + 160]
            require mem[ceil32(return_data.size) + 192] == mem[ceil32(return_data.size) + 192]
            require mem[ceil32(return_data.size) + 224] == mem[ceil32(return_data.size) + 224]
            require mem[ceil32(return_data.size) + 256] == mem[ceil32(return_data.size) + 256]
            require mem[ceil32(return_data.size) + 288] == mem[ceil32(return_data.size) + 300 len 20]
            require mem[ceil32(return_data.size) + 320] == mem[ceil32(return_data.size) + 332 len 20]
            require mem[ceil32(return_data.size) + 352] == mem[ceil32(return_data.size) + 364 len 20]
            if not mem[ceil32(return_data.size) + 192]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] <= -1 / mem[ceil32(return_data.size) + 192]:
                require ext_code.size(address(arg1))
                call address(arg1).mine(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg2, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg2
                mem[32] = 2
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = arg2
                require ext_code.size(address(arg1))
                staticcall address(arg1).balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(this.address), arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _225 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _229 = mem[_225]
                require mem[_225] == mem[_225]
                mem[mem[64] + 36] = gems[arg2].field_8
                mem[mem[64] + 68] = arg2
                mem[mem[64] + 100] = _229
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(address(arg1))
                call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), gems[arg2].field_0, arg2, _229, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg2
                mem[32] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(gems[arg2].field_8)
                staticcall gems[arg2].field_8.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _253 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _257 = mem[_253]
                require mem[_253] == mem[_253]
                mem[mem[64] + 4] = _owner
                mem[mem[64] + 36] = _257
                require ext_code.size(gems[arg2].field_8)
                call gems[arg2].field_8.0xa9059cbb with:
                     gas gas_remaining wei
                    args _owner, _257
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _269 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_269] == bool(mem[_269])
        else:
            mem[_72 + _70 + 32] = 0
            require mem[ceil32(return_data.size) + 160] == mem[ceil32(return_data.size) + 160]
            require mem[ceil32(return_data.size) + 192] == mem[ceil32(return_data.size) + 192]
            require mem[ceil32(return_data.size) + 224] == mem[ceil32(return_data.size) + 224]
            require mem[ceil32(return_data.size) + 256] == mem[ceil32(return_data.size) + 256]
            require mem[ceil32(return_data.size) + 288] == mem[ceil32(return_data.size) + 300 len 20]
            require mem[ceil32(return_data.size) + 320] == mem[ceil32(return_data.size) + 332 len 20]
            require mem[ceil32(return_data.size) + 352] == mem[ceil32(return_data.size) + 364 len 20]
            if not mem[ceil32(return_data.size) + 192]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] <= -1 / mem[ceil32(return_data.size) + 192]:
                require ext_code.size(address(arg1))
                call address(arg1).mine(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg2, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg2
                mem[32] = 2
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = arg2
                require ext_code.size(address(arg1))
                staticcall address(arg1).balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(this.address), arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _227 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _231 = mem[_227]
                require mem[_227] == mem[_227]
                mem[mem[64] + 36] = gems[arg2].field_8
                mem[mem[64] + 68] = arg2
                mem[mem[64] + 100] = _231
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(address(arg1))
                call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), gems[arg2].field_0, arg2, _231, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg2
                mem[32] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(gems[arg2].field_8)
                staticcall gems[arg2].field_8.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _255 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _259 = mem[_255]
                require mem[_255] == mem[_255]
                mem[mem[64] + 4] = _owner
                mem[mem[64] + 36] = _259
                require ext_code.size(gems[arg2].field_8)
                call gems[arg2].field_8.0xa9059cbb with:
                     gas gas_remaining wei
                    args _owner, _259
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _271 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_271] == bool(mem[_271])
    else:
        mem[(2 * ceil32(return_data.size)) + _12 + 128] = 0
        _69 = uint32(arg2), mem[ceil32(return_data.size) + 132 len 28]
        require uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] <= test266151307()
        require ceil32(return_data.size) + uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
        _71 = mem[ceil32(return_data.size) + uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] + 96]
        if mem[ceil32(return_data.size) + uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        _73 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] + 96])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] + 96])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] + 96])) + 1
        mem[_73] = mem[ceil32(return_data.size) + uint32(arg2), mem[ceil32(return_data.size) + 132 len 28] + 96]
        require _69 + _71 + 32 <= return_data.size
        mem[_73 + 32 len ceil32(_71)] = mem[ceil32(return_data.size) + _69 + 128 len ceil32(_71)]
        if ceil32(_71) <= _71:
            require mem[ceil32(return_data.size) + 160] == mem[ceil32(return_data.size) + 160]
            require mem[ceil32(return_data.size) + 192] == mem[ceil32(return_data.size) + 192]
            require mem[ceil32(return_data.size) + 224] == mem[ceil32(return_data.size) + 224]
            require mem[ceil32(return_data.size) + 256] == mem[ceil32(return_data.size) + 256]
            require mem[ceil32(return_data.size) + 288] == mem[ceil32(return_data.size) + 300 len 20]
            require mem[ceil32(return_data.size) + 320] == mem[ceil32(return_data.size) + 332 len 20]
            require mem[ceil32(return_data.size) + 352] == mem[ceil32(return_data.size) + 364 len 20]
            if not mem[ceil32(return_data.size) + 192]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] <= -1 / mem[ceil32(return_data.size) + 192]:
                require ext_code.size(address(arg1))
                call address(arg1).mine(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg2, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg2
                mem[32] = 2
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = arg2
                require ext_code.size(address(arg1))
                staticcall address(arg1).balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(this.address), arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _226 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _230 = mem[_226]
                require mem[_226] == mem[_226]
                mem[mem[64] + 36] = gems[arg2].field_8
                mem[mem[64] + 68] = arg2
                mem[mem[64] + 100] = _230
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(address(arg1))
                call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), gems[arg2].field_0, arg2, _230, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg2
                mem[32] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(gems[arg2].field_8)
                staticcall gems[arg2].field_8.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _258 = mem[_254]
                require mem[_254] == mem[_254]
                mem[mem[64] + 4] = _owner
                mem[mem[64] + 36] = _258
                require ext_code.size(gems[arg2].field_8)
                call gems[arg2].field_8.0xa9059cbb with:
                     gas gas_remaining wei
                    args _owner, _258
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _270 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_270] == bool(mem[_270])
        else:
            mem[_73 + _71 + 32] = 0
            require mem[ceil32(return_data.size) + 160] == mem[ceil32(return_data.size) + 160]
            require mem[ceil32(return_data.size) + 192] == mem[ceil32(return_data.size) + 192]
            require mem[ceil32(return_data.size) + 224] == mem[ceil32(return_data.size) + 224]
            require mem[ceil32(return_data.size) + 256] == mem[ceil32(return_data.size) + 256]
            require mem[ceil32(return_data.size) + 288] == mem[ceil32(return_data.size) + 300 len 20]
            require mem[ceil32(return_data.size) + 320] == mem[ceil32(return_data.size) + 332 len 20]
            require mem[ceil32(return_data.size) + 352] == mem[ceil32(return_data.size) + 364 len 20]
            if not mem[ceil32(return_data.size) + 192]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] <= -1 / mem[ceil32(return_data.size) + 192]:
                require ext_code.size(address(arg1))
                call address(arg1).mine(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg2, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg2
                mem[32] = 2
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = arg2
                require ext_code.size(address(arg1))
                staticcall address(arg1).balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(this.address), arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _228 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _232 = mem[_228]
                require mem[_228] == mem[_228]
                mem[mem[64] + 36] = gems[arg2].field_8
                mem[mem[64] + 68] = arg2
                mem[mem[64] + 100] = _232
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(address(arg1))
                call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), gems[arg2].field_0, arg2, _232, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg2
                mem[32] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(gems[arg2].field_8)
                staticcall gems[arg2].field_8.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _260 = mem[_256]
                require mem[_256] == mem[_256]
                mem[mem[64] + 4] = _owner
                mem[mem[64] + 36] = _260
                require ext_code.size(gems[arg2].field_8)
                call gems[arg2].field_8.0xa9059cbb with:
                     gas gas_remaining wei
                    args _owner, _260
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _272 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_272] == bool(mem[_272])
}



}
