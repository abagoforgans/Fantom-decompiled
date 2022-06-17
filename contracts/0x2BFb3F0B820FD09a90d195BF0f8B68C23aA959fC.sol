contract main {




// =====================  Runtime code  =====================


#
#  - sub_5a079eb0(?)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sortTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 < arg2:
        return address(arg1), arg2
    return address(arg2), arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require (997 * arg1) + (1000 * arg2)
    return (997 * arg1 * arg3 / (997 * arg1) + (1000 * arg2))
}

function getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require (997 * arg3) - (997 * arg1)
    return ((1000 * arg1 * arg2 / (997 * arg3) - (997 * arg1)) + 1)
}

function sub_4ee9e8dc(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg3)
    staticcall arg3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0], ext_call.return_data[0]
}

function getReserves(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg2 < arg3:
        if arg2 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if arg3 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_65952a43(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg2 < arg3:
        if arg2 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if arg3 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_8ba3e8a8(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg3)
    staticcall arg3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
        if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])) > arg2:
            require ext_code.size(arg3)
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_af4c0815(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg3)
    staticcall arg3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
        if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])) > arg2:
            require ext_code.size(arg3)
            call arg3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidity(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function sub_4ae31b18(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 34, 0x446d795472616e7366657248656c706572313a205452414e534645525f4641494c45, mem[298 len 30]
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 34, 0x446d795472616e7366657248656c706572313a205452414e534645525f4641494c45, mem[298 len 30]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        34,
                        0x446d795472616e7366657248656c706572313a205452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 299 len 30]
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            34,
                            0x446d795472616e7366657248656c706572313a205452414e534645525f4641494c45,
                            mem[ceil32(return_data.size) + 299 len 30]
}

function sub_cf041db0(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if not ext_call.success:
        revert with 0, 'call fail'
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg2.length) + 128] = bool(ext_call.success)
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
               mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
               arg2.length,
               Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
           arg2.length,
           Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
           mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
}

function sub_4885a5de(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2.length - 1 <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length - 1
    if arg2.length - 1:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length - 1] = call.data[calldata.size len 32 * arg2.length - 1]
    idx = 0
    while idx < arg2.length - 1:
        require idx < arg2.length
        require idx + 1 < arg2.length
        mem[(32 * arg2.length) + (32 * arg2.length - 1) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg2.length - 1) + 196] = mem[(32 * idx + 1) + 140 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args mem[(32 * arg2.length) + (32 * arg2.length - 1) + 164 len 64]
        mem[(32 * arg2.length) + (32 * arg2.length - 1) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * arg2.length) + 128]
        mem[(32 * idx) + (32 * arg2.length) + 160] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + (32 * arg2.length - 1) + 192] = address(ext_call.return_data[0])
    mem[(32 * arg2.length) + (32 * arg2.length - 1) + 160] = 64
    mem[(32 * arg2.length) + (32 * arg2.length - 1) + 224] = mem[(32 * arg2.length) + 128]
    mem[(32 * arg2.length) + (32 * arg2.length - 1) + 256 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 64, 
           address(ext_call.return_data[0]),
           mem[(32 * arg2.length) + (32 * arg2.length - 1) + 224 len (32 * mem[(32 * arg2.length) + 128]) + 32]
}

function sub_32b776d1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _30 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _32 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _34 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20])
        staticcall mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[mem[64] + 4] = address(_34)
        require ext_code.size(address(_30))
        staticcall address(_30).0x70a08231 with:
                gas gas_remaining wei
               args address(_34)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
            require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])) > _32:
                _44 = mem[64]
                mem[64] = mem[64] + 32
                mem[_44 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_44 + 36] = 0
                mem[_44 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                mem[_44 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                mem[_44 + 132] = 128
                mem[_44 + 164] = mem[_44]
                s = 0
                while s < mem[_44]:
                    mem[s + _44 + 196] = mem[s + _44 + 32]
                    s = s + 32
                    continue 
                if not mem[_44] % 32:
                    require ext_code.size(address(_34))
                    call address(_34).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_44 + 164 len mem[_44] + 32]
                else:
                    mem[floor32(mem[_44]) + _44 + 196] = mem[floor32(mem[_44]) + _44 + -(mem[_44] % 32) + 228 len mem[_44] % 32]
                    require ext_code.size(address(_34))
                    call address(_34).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_44], mem[_44 + 196 len floor32(mem[_44]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_2d52b229(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _30 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _32 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _34 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20])
        staticcall mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[mem[64] + 4] = address(_34)
        require ext_code.size(address(_30))
        staticcall address(_30).0x70a08231 with:
                gas gas_remaining wei
               args address(_34)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
            require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])) > _32:
                _44 = mem[64]
                mem[64] = mem[64] + 32
                mem[_44 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_44 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                mem[_44 + 68] = 0
                mem[_44 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                mem[_44 + 132] = 128
                mem[_44 + 164] = mem[_44]
                s = 0
                while s < mem[_44]:
                    mem[s + _44 + 196] = mem[s + _44 + 32]
                    s = s + 32
                    continue 
                if not mem[_44] % 32:
                    require ext_code.size(address(_34))
                    call address(_34).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_44 + 164 len mem[_44] + 32]
                else:
                    mem[floor32(mem[_44]) + _44 + 196] = mem[floor32(mem[_44]) + _44 + -(mem[_44] % 32) + 228 len mem[_44] % 32]
                    require ext_code.size(address(_34))
                    call address(_34).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_44], mem[_44 + 196 len floor32(mem[_44]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function getAllReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        require arg1.length <= test266151307()
        mem[(64 * arg1.length) + 160] = arg1.length
        mem[64] = (98 * arg1.length) + 192
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg1.length) + 128]
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _78 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
            _80 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 96 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _80) + 96
            mem[(32 * _80) + _78 + 96] = mem[(64 * arg1.length) + 160]
            _143 = mem[(64 * arg1.length) + 160]
            mem[(32 * _80) + _78 + 128 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            return memory
              from mem[64]
               len (32 * _143) + (32 * _80) + _78 + -mem[64] + 128
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[(64 * arg1.length) + 160]
            mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _84 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
        _86 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 96 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _86) + 96
        mem[(32 * _86) + _84 + 96] = mem[(64 * arg1.length) + 160]
        _146 = mem[(64 * arg1.length) + 160]
        mem[(32 * _86) + _84 + 128 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _146) + (32 * _86) + _84 + -mem[64] + 128
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(64 * arg1.length) + 160] = arg1.length
    mem[64] = (98 * arg1.length) + 192
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[(64 * arg1.length) + 160]
            mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _90 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
        _92 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 96 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _92) + 96
        mem[(32 * _92) + _90 + 96] = mem[(64 * arg1.length) + 160]
        _149 = mem[(64 * arg1.length) + 160]
        mem[(32 * _92) + _90 + 128 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _149) + (32 * _92) + _90 + -mem[64] + 128
    mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[(64 * arg1.length) + 160]
        mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    _96 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
    _98 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 96 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[mem[64] + 32] = (32 * _98) + 96
    mem[(32 * _98) + _96 + 96] = mem[(64 * arg1.length) + 160]
    _152 = mem[(64 * arg1.length) + 160]
    mem[(32 * _98) + _96 + 128 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    return memory
      from mem[64]
       len (32 * _152) + (32 * _98) + _96 + -mem[64] + 128
}

function sub_909ad5e1(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _60 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _62 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _65 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20])
        staticcall mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[mem[64] + 4] = address(_65)
        require ext_code.size(address(_60))
        staticcall address(_60).0x70a08231 with:
                gas gas_remaining wei
               args address(_65)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
            require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])) > _62:
                _90 = mem[64]
                mem[64] = mem[64] + 32
                mem[_90 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_90 + 36] = 0
                mem[_90 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                mem[_90 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                mem[_90 + 132] = 128
                mem[_90 + 164] = mem[_90]
                s = 0
                while s < mem[_90]:
                    mem[s + _90 + 196] = mem[s + _90 + 32]
                    s = s + 32
                    continue 
                if not mem[_90] % 32:
                    require ext_code.size(address(_65))
                    call address(_65).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_90 + 164 len mem[_90] + 32]
                else:
                    mem[floor32(mem[_90]) + _90 + 196] = mem[floor32(mem[_90]) + _90 + -(mem[_90] % 32) + 228 len mem[_90] % 32]
                    require ext_code.size(address(_65))
                    call address(_65).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_90], mem[_90 + 196 len floor32(mem[_90]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    _57 = mem[64]
    mem[64] = mem[64] + (32 * arg4.length) + 32
    mem[_57] = arg4.length
    mem[_57 + 32 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[_57 + (32 * arg4.length) + 32] = 0
    _58 = mem[64]
    mem[64] = (32 * arg5.length) + mem[64] + 32
    mem[_58] = arg5.length
    mem[_58 + 32 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[_58 + (32 * arg5.length) + 32] = 0
    _59 = mem[64]
    mem[64] = (32 * arg6.length) + mem[64] + 32
    mem[_59] = arg6.length
    mem[_59 + 32 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[_59 + (32 * arg6.length) + 32] = 0
    idx = 0
    while idx < arg4.length:
        require idx < mem[_57]
        _109 = mem[(32 * idx) + _57 + 32]
        require idx < mem[_58]
        _113 = mem[(32 * idx) + _58 + 32]
        require idx < mem[_59]
        _116 = mem[(32 * idx) + _59 + 32]
        require ext_code.size(mem[(32 * idx) + _59 + 44 len 20])
        staticcall mem[(32 * idx) + _59 + 44 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[mem[64] + 4] = address(_116)
        require ext_code.size(address(_109))
        staticcall address(_109).0x70a08231 with:
                gas gas_remaining wei
               args address(_116)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
            require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])) > _113:
                _126 = mem[64]
                mem[64] = mem[64] + 32
                mem[_126 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_126 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                mem[_126 + 68] = 0
                mem[_126 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                mem[_126 + 132] = 128
                mem[_126 + 164] = mem[_126]
                s = 0
                while s < mem[_126]:
                    mem[s + _126 + 196] = mem[s + _126 + 32]
                    s = s + 32
                    continue 
                if not mem[_126] % 32:
                    require ext_code.size(address(_116))
                    call address(_116).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_126 + 164 len mem[_126] + 32]
                else:
                    mem[floor32(mem[_126]) + _126 + 196] = mem[floor32(mem[_126]) + _126 + -(mem[_126] % 32) + 228 len mem[_126] % 32]
                    require ext_code.size(address(_116))
                    call address(_116).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_126], mem[_126 + 196 len floor32(mem[_126]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function getAmountsOut(address arg1, uint256 arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg3.length <= test266151307()
    mem[(32 * arg3.length) + 128] = arg3.length
    if not arg3.length:
        require 0 < arg3.length
        mem[(32 * arg3.length) + 160] = arg2
        idx = 0
        while idx < arg3.length - 1:
            require idx < arg3.length
            _105 = mem[(32 * idx) + 128]
            require idx + 1 < arg3.length
            _112 = mem[(32 * idx + 1) + 128]
            mem[(64 * arg3.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(64 * arg3.length) + 196] = address(_112)
            require ext_code.size(arg1)
            staticcall arg1.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[(64 * arg3.length) + 164], address(_112)
            mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx + 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_105) == address(_105):
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            else:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx + 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_112) == address(_105):
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        require 0 < arg3.length
        mem[(32 * arg3.length) + 160] = arg2
        idx = 0
        while idx < arg3.length - 1:
            require idx < arg3.length
            _110 = mem[(32 * idx) + 128]
            require idx + 1 < arg3.length
            _113 = mem[(32 * idx + 1) + 128]
            mem[(64 * arg3.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(64 * arg3.length) + 196] = address(_113)
            require ext_code.size(arg1)
            staticcall arg1.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[(64 * arg3.length) + 164], address(_113)
            mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx + 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_110) == address(_110):
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            else:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx + 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_113) == address(_110):
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            idx = idx + 1
            continue 
    mem[(64 * arg3.length) + 160] = 32
    mem[(64 * arg3.length) + 192] = mem[(32 * arg3.length) + 128]
    mem[(64 * arg3.length) + 224 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    return 32, mem[(64 * arg3.length) + 192 len (32 * mem[(32 * arg3.length) + 128]) + 32]
}

function getAmountsIn(address arg1, uint256 arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg3.length <= test266151307()
    mem[(32 * arg3.length) + 128] = arg3.length
    if not arg3.length:
        require arg3.length - 1 < arg3.length
        mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = arg2
        idx = arg3.length - 1
        while idx:
            require idx - 1 < arg3.length
            _105 = mem[(32 * idx - 1) + 128]
            require idx < arg3.length
            _112 = mem[(32 * idx) + 128]
            mem[(64 * arg3.length) + 164] = mem[(32 * idx - 1) + 140 len 20]
            mem[(64 * arg3.length) + 196] = address(_112)
            require ext_code.size(arg1)
            staticcall arg1.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[(64 * arg3.length) + 164], address(_112)
            mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require -997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx - 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / -997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + 1
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_105) == address(_105):
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
            else:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require -997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx - 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / -997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + 1
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_112) == address(_105):
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
            idx = idx - 1
            continue 
    else:
        mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        require arg3.length - 1 < arg3.length
        mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = arg2
        idx = arg3.length - 1
        while idx:
            require idx - 1 < arg3.length
            _110 = mem[(32 * idx - 1) + 128]
            require idx < arg3.length
            _113 = mem[(32 * idx) + 128]
            mem[(64 * arg3.length) + 164] = mem[(32 * idx - 1) + 140 len 20]
            mem[(64 * arg3.length) + 196] = address(_113)
            require ext_code.size(arg1)
            staticcall arg1.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[(64 * arg3.length) + 164], address(_113)
            mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require -997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx - 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / -997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + 1
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_110) == address(_110):
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
            else:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require -997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx - 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / -997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + 1
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_113) == address(_110):
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
            idx = idx - 1
            continue 
    mem[(64 * arg3.length) + 160] = 32
    mem[(64 * arg3.length) + 192] = mem[(32 * arg3.length) + 128]
    mem[(64 * arg3.length) + 224 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    return 32, mem[(64 * arg3.length) + 192 len (32 * mem[(32 * arg3.length) + 128]) + 32]
}

function sub_43903f2d(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg3.length <= test266151307()
    mem[(32 * arg3.length) + 128] = arg3.length
    if not arg3.length:
        require 0 < arg3.length
        mem[(32 * arg3.length) + 160] = arg2
        idx = 0
        while idx < arg3.length - 1:
            require idx < arg3.length
            _113 = mem[(32 * idx) + 128]
            require idx + 1 < arg3.length
            _120 = mem[(32 * idx + 1) + 128]
            require ext_code.size(arg1)
            staticcall arg1.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * arg3.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(64 * arg3.length) + 196] = address(_120)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[(64 * arg3.length) + 164], address(_120)
            mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx + 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_113) == address(_113):
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            else:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx + 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_120) == address(_113):
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        require 0 < arg3.length
        mem[(32 * arg3.length) + 160] = arg2
        idx = 0
        while idx < arg3.length - 1:
            require idx < arg3.length
            _118 = mem[(32 * idx) + 128]
            require idx + 1 < arg3.length
            _121 = mem[(32 * idx + 1) + 128]
            require ext_code.size(arg1)
            staticcall arg1.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * arg3.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(64 * arg3.length) + 196] = address(_121)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[(64 * arg3.length) + 164], address(_121)
            mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx + 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_118) == address(_118):
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            else:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx + 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_121) == address(_118):
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    else:
                        require (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        require idx + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            idx = idx + 1
            continue 
    mem[(64 * arg3.length) + 160] = 32
    mem[(64 * arg3.length) + 192] = mem[(32 * arg3.length) + 128]
    mem[(64 * arg3.length) + 224 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    return 32, mem[(64 * arg3.length) + 192 len (32 * mem[(32 * arg3.length) + 128]) + 32]
}

function sub_e77dfb30(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg3.length <= test266151307()
    mem[(32 * arg3.length) + 128] = arg3.length
    if not arg3.length:
        require arg3.length - 1 < arg3.length
        mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = arg2
        idx = arg3.length - 1
        while idx:
            require idx - 1 < arg3.length
            _113 = mem[(32 * idx - 1) + 128]
            require idx < arg3.length
            _120 = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            staticcall arg1.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * arg3.length) + 164] = mem[(32 * idx - 1) + 140 len 20]
            mem[(64 * arg3.length) + 196] = address(_120)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[(64 * arg3.length) + 164], address(_120)
            mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require -997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx - 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / -997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + 1
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_113) == address(_113):
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
            else:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require -997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx - 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / -997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + 1
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_120) == address(_113):
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
            idx = idx - 1
            continue 
    else:
        mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        require arg3.length - 1 < arg3.length
        mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = arg2
        idx = arg3.length - 1
        while idx:
            require idx - 1 < arg3.length
            require idx < arg3.length
            _121 = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            staticcall arg1.factory() with:
                    gas gas_remaining wei
            mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * arg3.length) + 160] = 0xe6a4390500000000000000000000000000000000000000000000000000000000
            mem[(64 * arg3.length) + 164] = mem[(32 * idx - 1) + 140 len 20]
            mem[(64 * arg3.length) + 196] = address(_121)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[(64 * arg3.length) + 164], address(_121)
            mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(32 * idx - 1) + 140 len 20] < address(_121):
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require -997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx - 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / -997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + 1
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
            else:
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg3.length) + 128]
                    require -997 * mem[(32 * idx) + (32 * arg3.length) + 160]
                    require idx - 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / -997 * mem[(32 * idx) + (32 * arg3.length) + 160]) + 1
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_121) == mem[(32 * idx - 1) + 140 len 20]:
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
            idx = idx - 1
            continue 
    mem[(64 * arg3.length) + 160] = 32
    mem[(64 * arg3.length) + 192] = mem[(32 * arg3.length) + 128]
    mem[(64 * arg3.length) + 224 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    return 32, mem[(64 * arg3.length) + 192 len (32 * mem[(32 * arg3.length) + 128]) + 32]
}

function sub_070e8d89(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg3.length
    mem[(32 * arg1.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg3.length) + 160] = arg1.length
    mem[64] = (64 * arg1.length) + (32 * arg3.length) + 192
    if not arg1.length:
        idx = 0
        while idx < arg1.length - 1:
            require idx < mem[96]
            _216 = mem[(32 * idx) + 128]
            _221 = mem[(32 * arg1.length) + 128]
            require mem[(32 * arg1.length) + 128] <= test266151307()
            _225 = mem[64]
            mem[mem[64]] = mem[(32 * arg1.length) + 128]
            mem[64] = mem[64] + (32 * _221) + 32
            if not _221:
                require 0 < mem[_225]
                mem[_225 + 32] = arg2
                _413 = mem[(32 * arg1.length) + 128]
                s = 0
                while s < _413 - 1:
                    require s < mem[(32 * arg1.length) + 128]
                    _427 = mem[(32 * s) + (32 * arg1.length) + 160]
                    require s + 1 < mem[(32 * arg1.length) + 128]
                    _443 = mem[(32 * s + 1) + (32 * arg1.length) + 160]
                    mem[mem[64] + 4] = mem[(32 * s) + (32 * arg1.length) + 172 len 20]
                    mem[mem[64] + 36] = address(_443)
                    require ext_code.size(address(_216))
                    staticcall address(_216).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_443)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[(32 * s) + (32 * arg1.length) + 172 len 20] < mem[(32 * s + 1) + (32 * arg1.length) + 172 len 20]:
                        if not address(ext_call.return_data[0]):
                            require s < mem[_225]
                            require 997 * mem[(32 * s) + _225 + 32]
                            require s + 1 < mem[_225]
                            mem[(32 * s + 1) + _225 + 32] = 0 / 997 * mem[(32 * s) + _225 + 32]
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_225]
                            if address(_427) == address(_427):
                                require (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require s + 1 < mem[_225]
                                mem[(32 * s + 1) + _225 + 32] = 997 * mem[(32 * s) + _225 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                require (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require s + 1 < mem[_225]
                                mem[(32 * s + 1) + _225 + 32] = 997 * mem[(32 * s) + _225 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    else:
                        if not address(ext_call.return_data[0]):
                            require s < mem[_225]
                            require 997 * mem[(32 * s) + _225 + 32]
                            require s + 1 < mem[_225]
                            mem[(32 * s + 1) + _225 + 32] = 0 / 997 * mem[(32 * s) + _225 + 32]
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_225]
                            if address(_443) == address(_427):
                                require (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require s + 1 < mem[_225]
                                mem[(32 * s + 1) + _225 + 32] = 997 * mem[(32 * s) + _225 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                require (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require s + 1 < mem[_225]
                                mem[(32 * s + 1) + _225 + 32] = 997 * mem[(32 * s) + _225 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    s = s + 1
                    continue 
            else:
                mem[_225 + 32 len 32 * _221] = call.data[calldata.size len 32 * _221]
                require 0 < mem[_225]
                mem[_225 + 32] = arg2
                _414 = mem[(32 * arg1.length) + 128]
                s = 0
                while s < _414 - 1:
                    require s < mem[(32 * arg1.length) + 128]
                    _431 = mem[(32 * s) + (32 * arg1.length) + 160]
                    require s + 1 < mem[(32 * arg1.length) + 128]
                    _446 = mem[(32 * s + 1) + (32 * arg1.length) + 160]
                    mem[mem[64] + 4] = mem[(32 * s) + (32 * arg1.length) + 172 len 20]
                    mem[mem[64] + 36] = address(_446)
                    require ext_code.size(address(_216))
                    staticcall address(_216).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_446)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[(32 * s) + (32 * arg1.length) + 172 len 20] < mem[(32 * s + 1) + (32 * arg1.length) + 172 len 20]:
                        if not address(ext_call.return_data[0]):
                            require s < mem[_225]
                            require 997 * mem[(32 * s) + _225 + 32]
                            require s + 1 < mem[_225]
                            mem[(32 * s + 1) + _225 + 32] = 0 / 997 * mem[(32 * s) + _225 + 32]
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_225]
                            if address(_431) == address(_431):
                                require (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require s + 1 < mem[_225]
                                mem[(32 * s + 1) + _225 + 32] = 997 * mem[(32 * s) + _225 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                require (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require s + 1 < mem[_225]
                                mem[(32 * s + 1) + _225 + 32] = 997 * mem[(32 * s) + _225 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    else:
                        if not address(ext_call.return_data[0]):
                            require s < mem[_225]
                            require 997 * mem[(32 * s) + _225 + 32]
                            require s + 1 < mem[_225]
                            mem[(32 * s + 1) + _225 + 32] = 0 / 997 * mem[(32 * s) + _225 + 32]
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_225]
                            if address(_446) == address(_431):
                                require (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require s + 1 < mem[_225]
                                mem[(32 * s + 1) + _225 + 32] = 997 * mem[(32 * s) + _225 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                require (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require s + 1 < mem[_225]
                                mem[(32 * s + 1) + _225 + 32] = 997 * mem[(32 * s) + _225 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _225 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    s = s + 1
                    continue 
            require mem[(32 * arg1.length) + 128] - 1 < mem[_225]
            require idx < mem[(32 * arg1.length) + (32 * arg3.length) + 160]
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg3.length) + 192] = mem[(32 * mem[(32 * arg1.length) + 128] - 1) + _225 + 32]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg3.length) + 160]
        _215 = mem[(32 * arg1.length) + (32 * arg3.length) + 160]
        mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + (32 * arg3.length) + 160])] = mem[(32 * arg1.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg3.length) + 160])]
        return 32, mem[mem[64] + 32 len (32 * _215) + 32]
    mem[(32 * arg1.length) + (32 * arg3.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length - 1:
        require idx < mem[96]
        _220 = mem[(32 * idx) + 128]
        _222 = mem[(32 * arg1.length) + 128]
        require mem[(32 * arg1.length) + 128] <= test266151307()
        _228 = mem[64]
        mem[mem[64]] = mem[(32 * arg1.length) + 128]
        mem[64] = mem[64] + (32 * _222) + 32
        if not _222:
            require 0 < mem[_228]
            mem[_228 + 32] = arg2
            _415 = mem[(32 * arg1.length) + 128]
            s = 0
            while s < _415 - 1:
                require s < mem[(32 * arg1.length) + 128]
                _435 = mem[(32 * s) + (32 * arg1.length) + 160]
                require s + 1 < mem[(32 * arg1.length) + 128]
                _449 = mem[(32 * s + 1) + (32 * arg1.length) + 160]
                mem[mem[64] + 4] = mem[(32 * s) + (32 * arg1.length) + 172 len 20]
                mem[mem[64] + 36] = address(_449)
                require ext_code.size(address(_220))
                staticcall address(_220).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_449)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(32 * s) + (32 * arg1.length) + 172 len 20] < mem[(32 * s + 1) + (32 * arg1.length) + 172 len 20]:
                    if not address(ext_call.return_data[0]):
                        require s < mem[_228]
                        require 997 * mem[(32 * s) + _228 + 32]
                        require s + 1 < mem[_228]
                        mem[(32 * s + 1) + _228 + 32] = 0 / 997 * mem[(32 * s) + _228 + 32]
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_228]
                        if address(_435) == address(_435):
                            require (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            require s + 1 < mem[_228]
                            mem[(32 * s + 1) + _228 + 32] = 997 * mem[(32 * s) + _228 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            require (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            require s + 1 < mem[_228]
                            mem[(32 * s + 1) + _228 + 32] = 997 * mem[(32 * s) + _228 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                else:
                    if not address(ext_call.return_data[0]):
                        require s < mem[_228]
                        require 997 * mem[(32 * s) + _228 + 32]
                        require s + 1 < mem[_228]
                        mem[(32 * s + 1) + _228 + 32] = 0 / 997 * mem[(32 * s) + _228 + 32]
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_228]
                        if address(_449) == address(_435):
                            require (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            require s + 1 < mem[_228]
                            mem[(32 * s + 1) + _228 + 32] = 997 * mem[(32 * s) + _228 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            require (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            require s + 1 < mem[_228]
                            mem[(32 * s + 1) + _228 + 32] = 997 * mem[(32 * s) + _228 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                s = s + 1
                continue 
        else:
            mem[_228 + 32 len 32 * _222] = call.data[calldata.size len 32 * _222]
            require 0 < mem[_228]
            mem[_228 + 32] = arg2
            _416 = mem[(32 * arg1.length) + 128]
            s = 0
            while s < _416 - 1:
                require s < mem[(32 * arg1.length) + 128]
                _439 = mem[(32 * s) + (32 * arg1.length) + 160]
                require s + 1 < mem[(32 * arg1.length) + 128]
                _452 = mem[(32 * s + 1) + (32 * arg1.length) + 160]
                mem[mem[64] + 4] = mem[(32 * s) + (32 * arg1.length) + 172 len 20]
                mem[mem[64] + 36] = address(_452)
                require ext_code.size(address(_220))
                staticcall address(_220).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_452)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(32 * s) + (32 * arg1.length) + 172 len 20] < mem[(32 * s + 1) + (32 * arg1.length) + 172 len 20]:
                    if not address(ext_call.return_data[0]):
                        require s < mem[_228]
                        require 997 * mem[(32 * s) + _228 + 32]
                        require s + 1 < mem[_228]
                        mem[(32 * s + 1) + _228 + 32] = 0 / 997 * mem[(32 * s) + _228 + 32]
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_228]
                        if address(_439) == address(_439):
                            require (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            require s + 1 < mem[_228]
                            mem[(32 * s + 1) + _228 + 32] = 997 * mem[(32 * s) + _228 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            require (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            require s + 1 < mem[_228]
                            mem[(32 * s + 1) + _228 + 32] = 997 * mem[(32 * s) + _228 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                else:
                    if not address(ext_call.return_data[0]):
                        require s < mem[_228]
                        require 997 * mem[(32 * s) + _228 + 32]
                        require s + 1 < mem[_228]
                        mem[(32 * s + 1) + _228 + 32] = 0 / 997 * mem[(32 * s) + _228 + 32]
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_228]
                        if address(_452) == address(_439):
                            require (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            require s + 1 < mem[_228]
                            mem[(32 * s + 1) + _228 + 32] = 997 * mem[(32 * s) + _228 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            require (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            require s + 1 < mem[_228]
                            mem[(32 * s + 1) + _228 + 32] = 997 * mem[(32 * s) + _228 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _228 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                s = s + 1
                continue 
        require mem[(32 * arg1.length) + 128] - 1 < mem[_228]
        require idx < mem[(32 * arg1.length) + (32 * arg3.length) + 160]
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg3.length) + 192] = mem[(32 * mem[(32 * arg1.length) + 128] - 1) + _228 + 32]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg3.length) + 160]
    _219 = mem[(32 * arg1.length) + (32 * arg3.length) + 160]
    mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + (32 * arg3.length) + 160])] = mem[(32 * arg1.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg3.length) + 160])]
    return 32, mem[mem[64] + 32 len (32 * _219) + 32]
}

function sub_44c3e77e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg3.length
    mem[(32 * arg1.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg3.length) + 160] = arg1.length
    mem[64] = (64 * arg1.length) + (32 * arg3.length) + 192
    if not arg1.length:
        idx = 0
        while idx < arg1.length - 1:
            require idx < mem[96]
            _232 = mem[(32 * idx) + 128]
            _237 = mem[(32 * arg1.length) + 128]
            require mem[(32 * arg1.length) + 128] <= test266151307()
            _241 = mem[64]
            mem[mem[64]] = mem[(32 * arg1.length) + 128]
            mem[64] = mem[64] + (32 * _237) + 32
            if not _237:
                require 0 < mem[_241]
                mem[_241 + 32] = arg2
                _445 = mem[(32 * arg1.length) + 128]
                s = 0
                while s < _445 - 1:
                    require s < mem[(32 * arg1.length) + 128]
                    _459 = mem[(32 * s) + (32 * arg1.length) + 160]
                    require s + 1 < mem[(32 * arg1.length) + 128]
                    _475 = mem[(32 * s + 1) + (32 * arg1.length) + 160]
                    require ext_code.size(address(_232))
                    staticcall address(_232).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = mem[(32 * s) + (32 * arg1.length) + 172 len 20]
                    mem[mem[64] + 36] = address(_475)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_475)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[(32 * s) + (32 * arg1.length) + 172 len 20] < mem[(32 * s + 1) + (32 * arg1.length) + 172 len 20]:
                        if not address(ext_call.return_data[0]):
                            require s < mem[_241]
                            require 997 * mem[(32 * s) + _241 + 32]
                            require s + 1 < mem[_241]
                            mem[(32 * s + 1) + _241 + 32] = 0 / 997 * mem[(32 * s) + _241 + 32]
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_241]
                            if address(_459) == address(_459):
                                require (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require s + 1 < mem[_241]
                                mem[(32 * s + 1) + _241 + 32] = 997 * mem[(32 * s) + _241 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                require (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require s + 1 < mem[_241]
                                mem[(32 * s + 1) + _241 + 32] = 997 * mem[(32 * s) + _241 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    else:
                        if not address(ext_call.return_data[0]):
                            require s < mem[_241]
                            require 997 * mem[(32 * s) + _241 + 32]
                            require s + 1 < mem[_241]
                            mem[(32 * s + 1) + _241 + 32] = 0 / 997 * mem[(32 * s) + _241 + 32]
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_241]
                            if address(_475) == address(_459):
                                require (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require s + 1 < mem[_241]
                                mem[(32 * s + 1) + _241 + 32] = 997 * mem[(32 * s) + _241 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                require (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require s + 1 < mem[_241]
                                mem[(32 * s + 1) + _241 + 32] = 997 * mem[(32 * s) + _241 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    s = s + 1
                    continue 
            else:
                mem[_241 + 32 len 32 * _237] = call.data[calldata.size len 32 * _237]
                require 0 < mem[_241]
                mem[_241 + 32] = arg2
                _446 = mem[(32 * arg1.length) + 128]
                s = 0
                while s < _446 - 1:
                    require s < mem[(32 * arg1.length) + 128]
                    _463 = mem[(32 * s) + (32 * arg1.length) + 160]
                    require s + 1 < mem[(32 * arg1.length) + 128]
                    _478 = mem[(32 * s + 1) + (32 * arg1.length) + 160]
                    require ext_code.size(address(_232))
                    staticcall address(_232).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = mem[(32 * s) + (32 * arg1.length) + 172 len 20]
                    mem[mem[64] + 36] = address(_478)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_478)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[(32 * s) + (32 * arg1.length) + 172 len 20] < mem[(32 * s + 1) + (32 * arg1.length) + 172 len 20]:
                        if not address(ext_call.return_data[0]):
                            require s < mem[_241]
                            require 997 * mem[(32 * s) + _241 + 32]
                            require s + 1 < mem[_241]
                            mem[(32 * s + 1) + _241 + 32] = 0 / 997 * mem[(32 * s) + _241 + 32]
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_241]
                            if address(_463) == address(_463):
                                require (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require s + 1 < mem[_241]
                                mem[(32 * s + 1) + _241 + 32] = 997 * mem[(32 * s) + _241 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                require (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require s + 1 < mem[_241]
                                mem[(32 * s + 1) + _241 + 32] = 997 * mem[(32 * s) + _241 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    else:
                        if not address(ext_call.return_data[0]):
                            require s < mem[_241]
                            require 997 * mem[(32 * s) + _241 + 32]
                            require s + 1 < mem[_241]
                            mem[(32 * s + 1) + _241 + 32] = 0 / 997 * mem[(32 * s) + _241 + 32]
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require s < mem[_241]
                            if address(_478) == address(_463):
                                require (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require s + 1 < mem[_241]
                                mem[(32 * s + 1) + _241 + 32] = 997 * mem[(32 * s) + _241 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            else:
                                require (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require s + 1 < mem[_241]
                                mem[(32 * s + 1) + _241 + 32] = 997 * mem[(32 * s) + _241 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _241 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    s = s + 1
                    continue 
            require mem[(32 * arg1.length) + 128] - 1 < mem[_241]
            require idx < mem[(32 * arg1.length) + (32 * arg3.length) + 160]
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg3.length) + 192] = mem[(32 * mem[(32 * arg1.length) + 128] - 1) + _241 + 32]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg3.length) + 160]
        _231 = mem[(32 * arg1.length) + (32 * arg3.length) + 160]
        mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + (32 * arg3.length) + 160])] = mem[(32 * arg1.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg3.length) + 160])]
        return 32, mem[mem[64] + 32 len (32 * _231) + 32]
    mem[(32 * arg1.length) + (32 * arg3.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length - 1:
        require idx < mem[96]
        _236 = mem[(32 * idx) + 128]
        _238 = mem[(32 * arg1.length) + 128]
        require mem[(32 * arg1.length) + 128] <= test266151307()
        _244 = mem[64]
        mem[mem[64]] = mem[(32 * arg1.length) + 128]
        mem[64] = mem[64] + (32 * _238) + 32
        if not _238:
            require 0 < mem[_244]
            mem[_244 + 32] = arg2
            _447 = mem[(32 * arg1.length) + 128]
            s = 0
            while s < _447 - 1:
                require s < mem[(32 * arg1.length) + 128]
                _467 = mem[(32 * s) + (32 * arg1.length) + 160]
                require s + 1 < mem[(32 * arg1.length) + 128]
                _481 = mem[(32 * s + 1) + (32 * arg1.length) + 160]
                require ext_code.size(address(_236))
                staticcall address(_236).factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = mem[(32 * s) + (32 * arg1.length) + 172 len 20]
                mem[mem[64] + 36] = address(_481)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_481)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(32 * s) + (32 * arg1.length) + 172 len 20] < mem[(32 * s + 1) + (32 * arg1.length) + 172 len 20]:
                    if not address(ext_call.return_data[0]):
                        require s < mem[_244]
                        require 997 * mem[(32 * s) + _244 + 32]
                        require s + 1 < mem[_244]
                        mem[(32 * s + 1) + _244 + 32] = 0 / 997 * mem[(32 * s) + _244 + 32]
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_244]
                        if address(_467) == address(_467):
                            require (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            require s + 1 < mem[_244]
                            mem[(32 * s + 1) + _244 + 32] = 997 * mem[(32 * s) + _244 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            require (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            require s + 1 < mem[_244]
                            mem[(32 * s + 1) + _244 + 32] = 997 * mem[(32 * s) + _244 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                else:
                    if not address(ext_call.return_data[0]):
                        require s < mem[_244]
                        require 997 * mem[(32 * s) + _244 + 32]
                        require s + 1 < mem[_244]
                        mem[(32 * s + 1) + _244 + 32] = 0 / 997 * mem[(32 * s) + _244 + 32]
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_244]
                        if address(_481) == address(_467):
                            require (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            require s + 1 < mem[_244]
                            mem[(32 * s + 1) + _244 + 32] = 997 * mem[(32 * s) + _244 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            require (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            require s + 1 < mem[_244]
                            mem[(32 * s + 1) + _244 + 32] = 997 * mem[(32 * s) + _244 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                s = s + 1
                continue 
        else:
            mem[_244 + 32 len 32 * _238] = call.data[calldata.size len 32 * _238]
            require 0 < mem[_244]
            mem[_244 + 32] = arg2
            _448 = mem[(32 * arg1.length) + 128]
            s = 0
            while s < _448 - 1:
                require s < mem[(32 * arg1.length) + 128]
                _471 = mem[(32 * s) + (32 * arg1.length) + 160]
                require s + 1 < mem[(32 * arg1.length) + 128]
                _484 = mem[(32 * s + 1) + (32 * arg1.length) + 160]
                require ext_code.size(address(_236))
                staticcall address(_236).factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = mem[(32 * s) + (32 * arg1.length) + 172 len 20]
                mem[mem[64] + 36] = address(_484)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_484)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(32 * s) + (32 * arg1.length) + 172 len 20] < mem[(32 * s + 1) + (32 * arg1.length) + 172 len 20]:
                    if not address(ext_call.return_data[0]):
                        require s < mem[_244]
                        require 997 * mem[(32 * s) + _244 + 32]
                        require s + 1 < mem[_244]
                        mem[(32 * s + 1) + _244 + 32] = 0 / 997 * mem[(32 * s) + _244 + 32]
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_244]
                        if address(_471) == address(_471):
                            require (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            require s + 1 < mem[_244]
                            mem[(32 * s + 1) + _244 + 32] = 997 * mem[(32 * s) + _244 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            require (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            require s + 1 < mem[_244]
                            mem[(32 * s + 1) + _244 + 32] = 997 * mem[(32 * s) + _244 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                else:
                    if not address(ext_call.return_data[0]):
                        require s < mem[_244]
                        require 997 * mem[(32 * s) + _244 + 32]
                        require s + 1 < mem[_244]
                        mem[(32 * s + 1) + _244 + 32] = 0 / 997 * mem[(32 * s) + _244 + 32]
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_244]
                        if address(_484) == address(_471):
                            require (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            require s + 1 < mem[_244]
                            mem[(32 * s + 1) + _244 + 32] = 997 * mem[(32 * s) + _244 + 32] * Mask(112, 0, ext_call.return_data[32]) / (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            require (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            require s + 1 < mem[_244]
                            mem[(32 * s + 1) + _244 + 32] = 997 * mem[(32 * s) + _244 + 32] * Mask(112, 0, ext_call.return_data[0]) / (997 * mem[(32 * s) + _244 + 32]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                s = s + 1
                continue 
        require mem[(32 * arg1.length) + 128] - 1 < mem[_244]
        require idx < mem[(32 * arg1.length) + (32 * arg3.length) + 160]
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg3.length) + 192] = mem[(32 * mem[(32 * arg1.length) + 128] - 1) + _244 + 32]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg3.length) + 160]
    _235 = mem[(32 * arg1.length) + (32 * arg3.length) + 160]
    mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + (32 * arg3.length) + 160])] = mem[(32 * arg1.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg3.length) + 160])]
    return 32, mem[mem[64] + 32 len (32 * _235) + 32]
}

function sub_8cb0c384(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        require arg1.length <= test266151307()
        mem[(64 * arg1.length) + 160] = arg1.length
        if not arg1.length:
            require arg1.length <= test266151307()
            mem[(98 * arg1.length) + 192] = arg1.length
            mem[64] = (131 * arg1.length) + 224
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    _277 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(arg2)
                    staticcall arg2.allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args _277
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = address(ext_call.return_data[0])
                    require idx < mem[(32 * arg1.length) + 128]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = address(ext_call.return_data[0])
                    require idx < mem[(32 * arg1.length) + 128]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(98 * arg1.length) + 192]
                    mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _274 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
                _276 = mem[(32 * arg1.length) + 128]
                mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
                mem[mem[64] + 32] = (32 * _276) + 128
                mem[(32 * _276) + _274 + 128] = mem[(64 * arg1.length) + 160]
                _523 = mem[(64 * arg1.length) + 160]
                mem[(32 * _276) + _274 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
                mem[_274 + 64] = (32 * _523) + (32 * _276) + 160
                mem[(32 * _523) + (32 * _276) + _274 + 160] = mem[(98 * arg1.length) + 192]
                _587 = mem[(98 * arg1.length) + 192]
                mem[(32 * _523) + (32 * _276) + _274 + 192 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
                return memory
                  from mem[64]
                   len (32 * _587) + (32 * _523) + (32 * _276) + _274 + -mem[64] + 192
            mem[(98 * arg1.length) + 224 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                _283 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(arg2)
                staticcall arg2.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args _283
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = address(ext_call.return_data[0])
                require idx < mem[(32 * arg1.length) + 128]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = address(ext_call.return_data[0])
                require idx < mem[(32 * arg1.length) + 128]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(98 * arg1.length) + 192]
                mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _280 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
            _282 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[_280 + 32] = (32 * _282) + 128
            mem[(32 * _282) + _280 + 128] = mem[(64 * arg1.length) + 160]
            _526 = mem[(64 * arg1.length) + 160]
            mem[(32 * _282) + _280 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[_280 + 64] = (32 * _526) + (32 * _282) + 160
            mem[(32 * _526) + (32 * _282) + _280 + 160] = mem[(98 * arg1.length) + 192]
            _590 = mem[(98 * arg1.length) + 192]
            mem[(32 * _526) + (32 * _282) + _280 + 192 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            return memory
              from mem[64]
               len (32 * _590) + (32 * _526) + (32 * _282) + _280 + -mem[64] + 192
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        require arg1.length <= test266151307()
        mem[(98 * arg1.length) + 192] = arg1.length
        mem[64] = (131 * arg1.length) + 224
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                _289 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(arg2)
                staticcall arg2.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args _289
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = address(ext_call.return_data[0])
                require idx < mem[(32 * arg1.length) + 128]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = address(ext_call.return_data[0])
                require idx < mem[(32 * arg1.length) + 128]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(98 * arg1.length) + 192]
                mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _286 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
            _288 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _288) + 128
            mem[(32 * _288) + _286 + 128] = mem[(64 * arg1.length) + 160]
            _529 = mem[(64 * arg1.length) + 160]
            mem[(32 * _288) + _286 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[_286 + 64] = (32 * _529) + (32 * _288) + 160
            mem[(32 * _529) + (32 * _288) + _286 + 160] = mem[(98 * arg1.length) + 192]
            _593 = mem[(98 * arg1.length) + 192]
            mem[(32 * _529) + (32 * _288) + _286 + 192 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            return memory
              from mem[64]
               len (32 * _593) + (32 * _529) + (32 * _288) + _286 + -mem[64] + 192
        mem[(98 * arg1.length) + 224 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _295 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(arg2)
            staticcall arg2.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args _295
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = address(ext_call.return_data[0])
            require idx < mem[(32 * arg1.length) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * arg1.length) + 160]
            mem[(32 * idx) + (64 * arg1.length) + 192] = address(ext_call.return_data[0])
            require idx < mem[(32 * arg1.length) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(98 * arg1.length) + 192]
            mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _292 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        _294 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _294) + 128
        mem[(32 * _294) + _292 + 128] = mem[(64 * arg1.length) + 160]
        _532 = mem[(64 * arg1.length) + 160]
        mem[(32 * _294) + _292 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[_292 + 64] = (32 * _532) + (32 * _294) + 160
        mem[(32 * _532) + (32 * _294) + _292 + 160] = mem[(98 * arg1.length) + 192]
        _596 = mem[(98 * arg1.length) + 192]
        mem[(32 * _532) + (32 * _294) + _292 + 192 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
        return memory
          from mem[64]
           len (32 * _596) + (32 * _532) + (32 * _294) + _292 + -mem[64] + 192
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(64 * arg1.length) + 160] = arg1.length
    if not arg1.length:
        require arg1.length <= test266151307()
        mem[(98 * arg1.length) + 192] = arg1.length
        mem[64] = (131 * arg1.length) + 224
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                _301 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(arg2)
                staticcall arg2.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args _301
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = address(ext_call.return_data[0])
                require idx < mem[(32 * arg1.length) + 128]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = address(ext_call.return_data[0])
                require idx < mem[(32 * arg1.length) + 128]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(98 * arg1.length) + 192]
                mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _298 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
            _300 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _300) + 128
            mem[(32 * _300) + _298 + 128] = mem[(64 * arg1.length) + 160]
            _535 = mem[(64 * arg1.length) + 160]
            mem[(32 * _300) + _298 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[_298 + 64] = (32 * _535) + (32 * _300) + 160
            mem[(32 * _535) + (32 * _300) + _298 + 160] = mem[(98 * arg1.length) + 192]
            _599 = mem[(98 * arg1.length) + 192]
            mem[(32 * _535) + (32 * _300) + _298 + 192 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            return memory
              from mem[64]
               len (32 * _599) + (32 * _535) + (32 * _300) + _298 + -mem[64] + 192
        mem[(98 * arg1.length) + 224 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _307 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(arg2)
            staticcall arg2.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args _307
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = address(ext_call.return_data[0])
            require idx < mem[(32 * arg1.length) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * arg1.length) + 160]
            mem[(32 * idx) + (64 * arg1.length) + 192] = address(ext_call.return_data[0])
            require idx < mem[(32 * arg1.length) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(98 * arg1.length) + 192]
            mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _304 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        _306 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _306) + 128
        mem[(32 * _306) + _304 + 128] = mem[(64 * arg1.length) + 160]
        _538 = mem[(64 * arg1.length) + 160]
        mem[(32 * _306) + _304 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[_304 + 64] = (32 * _538) + (32 * _306) + 160
        mem[(32 * _538) + (32 * _306) + _304 + 160] = mem[(98 * arg1.length) + 192]
        _602 = mem[(98 * arg1.length) + 192]
        mem[(32 * _538) + (32 * _306) + _304 + 192 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
        return memory
          from mem[64]
           len (32 * _602) + (32 * _538) + (32 * _306) + _304 + -mem[64] + 192
    mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(98 * arg1.length) + 192] = arg1.length
    mem[64] = (131 * arg1.length) + 224
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _313 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(arg2)
            staticcall arg2.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args _313
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = address(ext_call.return_data[0])
            require idx < mem[(32 * arg1.length) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * arg1.length) + 160]
            mem[(32 * idx) + (64 * arg1.length) + 192] = address(ext_call.return_data[0])
            require idx < mem[(32 * arg1.length) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(98 * arg1.length) + 192]
            mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _310 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        _312 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[_310 + 32] = (32 * _312) + 128
        mem[(32 * _312) + _310 + 128] = mem[(64 * arg1.length) + 160]
        _541 = mem[(64 * arg1.length) + 160]
        mem[(32 * _312) + _310 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[_310 + 64] = (32 * _541) + (32 * _312) + 160
        mem[(32 * _541) + (32 * _312) + _310 + 160] = mem[(98 * arg1.length) + 192]
        _605 = mem[(98 * arg1.length) + 192]
        mem[(32 * _541) + (32 * _312) + _310 + 192 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
        return memory
          from mem[64]
           len (32 * _605) + (32 * _541) + (32 * _312) + _310 + -mem[64] + 192
    mem[(98 * arg1.length) + 224 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _319 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(arg2)
        staticcall arg2.allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args _319
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * idx) + (32 * arg1.length) + 160] = address(ext_call.return_data[0])
        require idx < mem[(32 * arg1.length) + 128]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(64 * arg1.length) + 160]
        mem[(32 * idx) + (64 * arg1.length) + 192] = address(ext_call.return_data[0])
        require idx < mem[(32 * arg1.length) + 128]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(98 * arg1.length) + 192]
        mem[(32 * idx) + (98 * arg1.length) + 224] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    _316 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
    _318 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[mem[64] + 32] = (32 * _318) + 128
    mem[(32 * _318) + _316 + 128] = mem[(64 * arg1.length) + 160]
    _544 = mem[(64 * arg1.length) + 160]
    mem[(32 * _318) + _316 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    mem[_316 + 64] = (32 * _544) + (32 * _318) + 160
    mem[(32 * _544) + (32 * _318) + _316 + 160] = mem[(98 * arg1.length) + 192]
    _608 = mem[(98 * arg1.length) + 192]
    mem[(32 * _544) + (32 * _318) + _316 + 192 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
    return memory
      from mem[64]
       len (32 * _608) + (32 * _544) + (32 * _318) + _316 + -mem[64] + 192
}

function sub_ee61e57b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == owner
    require 0 < arg2.length
    _4 = mem[(32 * arg1.length) + 160]
    require 0 < arg1.length
    require 0 < arg2.length
    require ext_code.size(mem[(32 * arg1.length) + 172 len 20])
    staticcall mem[(32 * arg1.length) + 172 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = mem[140 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 68
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 260
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 4] = transfer(address arg1, uint256 arg2)
    mem[(32 * arg1.length) + (32 * arg2.length) + 260 len 64] = 0, mem[140 len 20], ext_call.return_data[0 len 28]
    mem[(32 * arg1.length) + (32 * arg2.length) + 352 len 4] = ext_call.return_data[20 len 4]
    call address(_4).mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 4] with:
         gas gas_remaining wei
        args ext_call.return_data[0], Mask(224, 32, mem[140 len 20], ext_call.return_data[0 len 28]) >> 32, mem[(32 * arg1.length) + (32 * arg2.length) + 324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        34,
                        0x446d795472616e7366657248656c706572313a205452414e534645525f4641494c45,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 362 len 30]
        if not arg1.length:
            idx = 0
            while idx < arg2.length - 1:
                require idx < mem[(32 * arg1.length) + 128]
                _1304 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx + 1 < mem[(32 * arg1.length) + 128]
                _1312 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                require idx < mem[96]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                    _1324 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1324)
                    require ext_code.size(address(_1304))
                    staticcall address(_1304).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1324)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1304) == address(_1304):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1304) == address(_1304):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1501 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1501 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1501 + 36] = 0
                                mem[_1501 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1501 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1501 + 132] = 128
                                mem[_1501 + 164] = mem[_1501]
                                s = 0
                                while s < mem[_1501]:
                                    mem[s + _1501 + 196] = mem[s + _1501 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1501] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1501 + 164 len mem[_1501] + 32]
                                else:
                                    mem[floor32(mem[_1501]) + _1501 + 196] = mem[floor32(mem[_1501]) + _1501 + -(mem[_1501] % 32) + 228 len mem[_1501] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1501], mem[_1501 + 196 len floor32(mem[_1501]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1500 = mem[(32 * idx + 1) + 128]
                                _1596 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1596 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1596 + 36] = 0
                                mem[_1596 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1596 + 100] = address(_1500)
                                mem[_1596 + 132] = 128
                                mem[_1596 + 164] = mem[_1596]
                                s = 0
                                while s < mem[_1596]:
                                    mem[s + _1596 + 196] = mem[s + _1596 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1596] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1596] + _1596 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1596]) + _1596 + 196] = mem[floor32(mem[_1596]) + _1596 + -(mem[_1596] % 32) + 228 len mem[_1596] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1596]) + _1596 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1504 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1504 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1504 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1504 + 68] = 0
                                mem[_1504 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1504 + 132] = 128
                                mem[_1504 + 164] = mem[_1504]
                                s = 0
                                while s < mem[_1504]:
                                    mem[s + _1504 + 196] = mem[s + _1504 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1504] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1504] + _1504 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1504]) + _1504 + 196] = mem[floor32(mem[_1504]) + _1504 + -(mem[_1504] % 32) + 228 len mem[_1504] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1504]) + _1504 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1503 = mem[(32 * idx + 1) + 128]
                                _1598 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1598 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1598 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1598 + 68] = 0
                                mem[_1598 + 100] = address(_1503)
                                mem[_1598 + 132] = 128
                                mem[_1598 + 164] = mem[_1598]
                                s = 0
                                while s < mem[_1598]:
                                    mem[s + _1598 + 196] = mem[s + _1598 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1598] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1598] + _1598 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1598]) + _1598 + 196] = mem[floor32(mem[_1598]) + _1598 + -(mem[_1598] % 32) + 228 len mem[_1598] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1598]) + _1598 + -mem[64] + 224]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1304) == address(_1304):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1507 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1507 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1507 + 36] = 0
                                mem[_1507 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1507 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1507 + 132] = 128
                                mem[_1507 + 164] = mem[_1507]
                                s = 0
                                while s < mem[_1507]:
                                    mem[s + _1507 + 196] = mem[s + _1507 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1507] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1507] + _1507 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1507]) + _1507 + 196] = mem[floor32(mem[_1507]) + _1507 + -(mem[_1507] % 32) + 228 len mem[_1507] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1507]) + _1507 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1506 = mem[(32 * idx + 1) + 128]
                                _1600 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1600 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1600 + 36] = 0
                                mem[_1600 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1600 + 100] = address(_1506)
                                mem[_1600 + 132] = 128
                                mem[_1600 + 164] = mem[_1600]
                                s = 0
                                while s < mem[_1600]:
                                    mem[s + _1600 + 196] = mem[s + _1600 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1600] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1600] + _1600 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1600]) + _1600 + 196] = mem[floor32(mem[_1600]) + _1600 + -(mem[_1600] % 32) + 228 len mem[_1600] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1600]) + _1600 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1510 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1510 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1510 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1510 + 68] = 0
                                mem[_1510 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1510 + 132] = 128
                                mem[_1510 + 164] = mem[_1510]
                                s = 0
                                while s < mem[_1510]:
                                    mem[s + _1510 + 196] = mem[s + _1510 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1510] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1510] + _1510 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1510]) + _1510 + 196] = mem[floor32(mem[_1510]) + _1510 + -(mem[_1510] % 32) + 228 len mem[_1510] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1510]) + _1510 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1509 = mem[(32 * idx + 1) + 128]
                                _1602 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1602 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1602 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1602 + 68] = 0
                                mem[_1602 + 100] = address(_1509)
                                mem[_1602 + 132] = 128
                                mem[_1602 + 164] = mem[_1602]
                                s = 0
                                while s < mem[_1602]:
                                    mem[s + _1602 + 196] = mem[s + _1602 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1602] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1602] + _1602 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1602]) + _1602 + 196] = mem[floor32(mem[_1602]) + _1602 + -(mem[_1602] % 32) + 228 len mem[_1602] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1602]) + _1602 + -mem[64] + 224]
                else:
                    _1327 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1327)
                    require ext_code.size(address(_1304))
                    staticcall address(_1304).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1327)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1312) == address(_1304):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1304) == address(_1312):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1513 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1513 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1513 + 36] = 0
                                mem[_1513 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1513 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1513 + 132] = 128
                                mem[_1513 + 164] = mem[_1513]
                                s = 0
                                while s < mem[_1513]:
                                    mem[s + _1513 + 196] = mem[s + _1513 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1513] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1513 + 164 len mem[_1513] + 32]
                                else:
                                    mem[floor32(mem[_1513]) + _1513 + 196] = mem[floor32(mem[_1513]) + _1513 + -(mem[_1513] % 32) + 228 len mem[_1513] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1513], mem[_1513 + 196 len floor32(mem[_1513]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1512 = mem[(32 * idx + 1) + 128]
                                _1604 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1604 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1604 + 36] = 0
                                mem[_1604 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1604 + 100] = address(_1512)
                                mem[_1604 + 132] = 128
                                mem[_1604 + 164] = mem[_1604]
                                s = 0
                                while s < mem[_1604]:
                                    mem[s + _1604 + 196] = mem[s + _1604 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1604] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1512), 128, mem[_1604 + 164 len mem[_1604] + 32]
                                else:
                                    mem[floor32(mem[_1604]) + _1604 + 196] = mem[floor32(mem[_1604]) + _1604 + -(mem[_1604] % 32) + 228 len mem[_1604] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1512), 128, mem[_1604], mem[_1604 + 196 len floor32(mem[_1604]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1516 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1516 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1516 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1516 + 68] = 0
                                mem[_1516 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1516 + 132] = 128
                                mem[_1516 + 164] = mem[_1516]
                                s = 0
                                while s < mem[_1516]:
                                    mem[s + _1516 + 196] = mem[s + _1516 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1516] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1516] + _1516 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1516]) + _1516 + 196] = mem[floor32(mem[_1516]) + _1516 + -(mem[_1516] % 32) + 228 len mem[_1516] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1516]) + _1516 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1515 = mem[(32 * idx + 1) + 128]
                                _1606 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1606 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1606 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1606 + 68] = 0
                                mem[_1606 + 100] = address(_1515)
                                mem[_1606 + 132] = 128
                                mem[_1606 + 164] = mem[_1606]
                                s = 0
                                while s < mem[_1606]:
                                    mem[s + _1606 + 196] = mem[s + _1606 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1606] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1515), 128, mem[_1606 + 164 len mem[_1606] + 32]
                                else:
                                    mem[floor32(mem[_1606]) + _1606 + 196] = mem[floor32(mem[_1606]) + _1606 + -(mem[_1606] % 32) + 228 len mem[_1606] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1515), 128, mem[_1606], mem[_1606 + 196 len floor32(mem[_1606]) + 32]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1304) == address(_1312):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1519 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1519 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1519 + 36] = 0
                                mem[_1519 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1519 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1519 + 132] = 128
                                mem[_1519 + 164] = mem[_1519]
                                s = 0
                                while s < mem[_1519]:
                                    mem[s + _1519 + 196] = mem[s + _1519 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1519] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1519 + 164 len mem[_1519] + 32]
                                else:
                                    mem[floor32(mem[_1519]) + _1519 + 196] = mem[floor32(mem[_1519]) + _1519 + -(mem[_1519] % 32) + 228 len mem[_1519] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1519], mem[_1519 + 196 len floor32(mem[_1519]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1518 = mem[(32 * idx + 1) + 128]
                                _1608 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1608 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1608 + 36] = 0
                                mem[_1608 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1608 + 100] = address(_1518)
                                mem[_1608 + 132] = 128
                                mem[_1608 + 164] = mem[_1608]
                                s = 0
                                while s < mem[_1608]:
                                    mem[s + _1608 + 196] = mem[s + _1608 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1608] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1518), 128, mem[_1608 + 164 len mem[_1608] + 32]
                                else:
                                    mem[floor32(mem[_1608]) + _1608 + 196] = mem[floor32(mem[_1608]) + _1608 + -(mem[_1608] % 32) + 228 len mem[_1608] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1518), 128, mem[_1608], mem[_1608 + 196 len floor32(mem[_1608]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1522 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1522 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1522 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1522 + 68] = 0
                                mem[_1522 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1522 + 132] = 128
                                mem[_1522 + 164] = mem[_1522]
                                s = 0
                                while s < mem[_1522]:
                                    mem[s + _1522 + 196] = mem[s + _1522 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1522] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1522 + 164 len mem[_1522] + 32]
                                else:
                                    mem[floor32(mem[_1522]) + _1522 + 196] = mem[floor32(mem[_1522]) + _1522 + -(mem[_1522] % 32) + 228 len mem[_1522] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1522], mem[_1522 + 196 len floor32(mem[_1522]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1521 = mem[(32 * idx + 1) + 128]
                                _1610 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1610 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1610 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1610 + 68] = 0
                                mem[_1610 + 100] = address(_1521)
                                mem[_1610 + 132] = 128
                                mem[_1610 + 164] = mem[_1610]
                                s = 0
                                while s < mem[_1610]:
                                    mem[s + _1610 + 196] = mem[s + _1610 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1610] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1610] + _1610 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1610]) + _1610 + 196] = mem[floor32(mem[_1610]) + _1610 + -(mem[_1610] % 32) + 228 len mem[_1610] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1610]) + _1610 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require arg1.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            34,
                            0x446d795472616e7366657248656c706572313a205452414e534645525f4641494c45,
                            mem[(32 * arg1.length) + (32 * arg2.length) + 362 len 30]
            idx = 0
            while idx < arg2.length - 1:
                require idx < mem[(32 * arg1.length) + 128]
                _1306 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx + 1 < mem[(32 * arg1.length) + 128]
                _1313 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                require idx < mem[96]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                    _1330 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1330)
                    require ext_code.size(address(_1306))
                    staticcall address(_1306).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1330)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1306) == address(_1306):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1306) == address(_1306):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1525 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1525 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1525 + 36] = 0
                                mem[_1525 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1525 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1525 + 132] = 128
                                mem[_1525 + 164] = mem[_1525]
                                s = 0
                                while s < mem[_1525]:
                                    mem[s + _1525 + 196] = mem[s + _1525 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1525] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1525] + _1525 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1525]) + _1525 + 196] = mem[floor32(mem[_1525]) + _1525 + -(mem[_1525] % 32) + 228 len mem[_1525] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1525]) + _1525 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1524 = mem[(32 * idx + 1) + 128]
                                _1612 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1612 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1612 + 36] = 0
                                mem[_1612 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1612 + 100] = address(_1524)
                                mem[_1612 + 132] = 128
                                mem[_1612 + 164] = mem[_1612]
                                s = 0
                                while s < mem[_1612]:
                                    mem[s + _1612 + 196] = mem[s + _1612 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1612] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1524), 128, mem[_1612 + 164 len mem[_1612] + 32]
                                else:
                                    mem[floor32(mem[_1612]) + _1612 + 196] = mem[floor32(mem[_1612]) + _1612 + -(mem[_1612] % 32) + 228 len mem[_1612] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1524), 128, mem[_1612], mem[_1612 + 196 len floor32(mem[_1612]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1528 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1528 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1528 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1528 + 68] = 0
                                mem[_1528 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1528 + 132] = 128
                                mem[_1528 + 164] = mem[_1528]
                                s = 0
                                while s < mem[_1528]:
                                    mem[s + _1528 + 196] = mem[s + _1528 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1528] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1528 + 164 len mem[_1528] + 32]
                                else:
                                    mem[floor32(mem[_1528]) + _1528 + 196] = mem[floor32(mem[_1528]) + _1528 + -(mem[_1528] % 32) + 228 len mem[_1528] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1528], mem[_1528 + 196 len floor32(mem[_1528]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1527 = mem[(32 * idx + 1) + 128]
                                _1614 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1614 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1614 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1614 + 68] = 0
                                mem[_1614 + 100] = address(_1527)
                                mem[_1614 + 132] = 128
                                mem[_1614 + 164] = mem[_1614]
                                s = 0
                                while s < mem[_1614]:
                                    mem[s + _1614 + 196] = mem[s + _1614 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1614] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1527), 128, mem[_1614 + 164 len mem[_1614] + 32]
                                else:
                                    mem[floor32(mem[_1614]) + _1614 + 196] = mem[floor32(mem[_1614]) + _1614 + -(mem[_1614] % 32) + 228 len mem[_1614] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1527), 128, mem[_1614], mem[_1614 + 196 len floor32(mem[_1614]) + 32]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1306) == address(_1306):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1531 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1531 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1531 + 36] = 0
                                mem[_1531 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1531 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1531 + 132] = 128
                                mem[_1531 + 164] = mem[_1531]
                                s = 0
                                while s < mem[_1531]:
                                    mem[s + _1531 + 196] = mem[s + _1531 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1531] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1531] + _1531 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1531]) + _1531 + 196] = mem[floor32(mem[_1531]) + _1531 + -(mem[_1531] % 32) + 228 len mem[_1531] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1531]) + _1531 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1530 = mem[(32 * idx + 1) + 128]
                                _1616 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1616 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1616 + 36] = 0
                                mem[_1616 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1616 + 100] = address(_1530)
                                mem[_1616 + 132] = 128
                                mem[_1616 + 164] = mem[_1616]
                                s = 0
                                while s < mem[_1616]:
                                    mem[s + _1616 + 196] = mem[s + _1616 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1616] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1530), 128, mem[_1616 + 164 len mem[_1616] + 32]
                                else:
                                    mem[floor32(mem[_1616]) + _1616 + 196] = mem[floor32(mem[_1616]) + _1616 + -(mem[_1616] % 32) + 228 len mem[_1616] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1530), 128, mem[_1616], mem[_1616 + 196 len floor32(mem[_1616]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1534 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1534 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1534 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1534 + 68] = 0
                                mem[_1534 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1534 + 132] = 128
                                mem[_1534 + 164] = mem[_1534]
                                s = 0
                                while s < mem[_1534]:
                                    mem[s + _1534 + 196] = mem[s + _1534 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1534] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1534 + 164 len mem[_1534] + 32]
                                else:
                                    mem[floor32(mem[_1534]) + _1534 + 196] = mem[floor32(mem[_1534]) + _1534 + -(mem[_1534] % 32) + 228 len mem[_1534] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1534], mem[_1534 + 196 len floor32(mem[_1534]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1533 = mem[(32 * idx + 1) + 128]
                                _1618 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1618 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1618 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1618 + 68] = 0
                                mem[_1618 + 100] = address(_1533)
                                mem[_1618 + 132] = 128
                                mem[_1618 + 164] = mem[_1618]
                                s = 0
                                while s < mem[_1618]:
                                    mem[s + _1618 + 196] = mem[s + _1618 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1618] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1533), 128, mem[_1618 + 164 len mem[_1618] + 32]
                                else:
                                    mem[floor32(mem[_1618]) + _1618 + 196] = mem[floor32(mem[_1618]) + _1618 + -(mem[_1618] % 32) + 228 len mem[_1618] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1533), 128, mem[_1618], mem[_1618 + 196 len floor32(mem[_1618]) + 32]
                else:
                    _1333 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1333)
                    require ext_code.size(address(_1306))
                    staticcall address(_1306).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1333)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1313) == address(_1306):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1306) == address(_1313):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1537 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1537 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1537 + 36] = 0
                                mem[_1537 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1537 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1537 + 132] = 128
                                mem[_1537 + 164] = mem[_1537]
                                s = 0
                                while s < mem[_1537]:
                                    mem[s + _1537 + 196] = mem[s + _1537 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1537] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1537 + 164 len mem[_1537] + 32]
                                else:
                                    mem[floor32(mem[_1537]) + _1537 + 196] = mem[floor32(mem[_1537]) + _1537 + -(mem[_1537] % 32) + 228 len mem[_1537] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1537], mem[_1537 + 196 len floor32(mem[_1537]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1536 = mem[(32 * idx + 1) + 128]
                                _1620 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1620 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1620 + 36] = 0
                                mem[_1620 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1620 + 100] = address(_1536)
                                mem[_1620 + 132] = 128
                                mem[_1620 + 164] = mem[_1620]
                                s = 0
                                while s < mem[_1620]:
                                    mem[s + _1620 + 196] = mem[s + _1620 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1620] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1620] + _1620 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1620]) + _1620 + 196] = mem[floor32(mem[_1620]) + _1620 + -(mem[_1620] % 32) + 228 len mem[_1620] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1620]) + _1620 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1540 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1540 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1540 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1540 + 68] = 0
                                mem[_1540 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1540 + 132] = 128
                                mem[_1540 + 164] = mem[_1540]
                                s = 0
                                while s < mem[_1540]:
                                    mem[s + _1540 + 196] = mem[s + _1540 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1540] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1540 + 164 len mem[_1540] + 32]
                                else:
                                    mem[floor32(mem[_1540]) + _1540 + 196] = mem[floor32(mem[_1540]) + _1540 + -(mem[_1540] % 32) + 228 len mem[_1540] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1540], mem[_1540 + 196 len floor32(mem[_1540]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1539 = mem[(32 * idx + 1) + 128]
                                _1622 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1622 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1622 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1622 + 68] = 0
                                mem[_1622 + 100] = address(_1539)
                                mem[_1622 + 132] = 128
                                mem[_1622 + 164] = mem[_1622]
                                s = 0
                                while s < mem[_1622]:
                                    mem[s + _1622 + 196] = mem[s + _1622 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1622] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1539), 128, mem[_1622 + 164 len mem[_1622] + 32]
                                else:
                                    mem[floor32(mem[_1622]) + _1622 + 196] = mem[floor32(mem[_1622]) + _1622 + -(mem[_1622] % 32) + 228 len mem[_1622] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1539), 128, mem[_1622], mem[_1622 + 196 len floor32(mem[_1622]) + 32]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1306) == address(_1313):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1543 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1543 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1543 + 36] = 0
                                mem[_1543 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1543 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1543 + 132] = 128
                                mem[_1543 + 164] = mem[_1543]
                                s = 0
                                while s < mem[_1543]:
                                    mem[s + _1543 + 196] = mem[s + _1543 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1543] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1543] + _1543 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1543]) + _1543 + 196] = mem[floor32(mem[_1543]) + _1543 + -(mem[_1543] % 32) + 228 len mem[_1543] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1543]) + _1543 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1542 = mem[(32 * idx + 1) + 128]
                                _1624 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1624 + 36] = 0
                                mem[_1624 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1624 + 100] = address(_1542)
                                mem[_1624 + 132] = 128
                                mem[_1624 + 164] = mem[_1624]
                                s = 0
                                while s < mem[_1624]:
                                    mem[s + _1624 + 196] = mem[s + _1624 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1624] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1542), 128, mem[_1624 + 164 len mem[_1624] + 32]
                                else:
                                    mem[floor32(mem[_1624]) + _1624 + 196] = mem[floor32(mem[_1624]) + _1624 + -(mem[_1624] % 32) + 228 len mem[_1624] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1542), 128, mem[_1624], mem[_1624 + 196 len floor32(mem[_1624]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1546 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1546 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1546 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1546 + 68] = 0
                                mem[_1546 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1546 + 132] = 128
                                mem[_1546 + 164] = mem[_1546]
                                s = 0
                                while s < mem[_1546]:
                                    mem[s + _1546 + 196] = mem[s + _1546 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1546] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1546] + _1546 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1546]) + _1546 + 196] = mem[floor32(mem[_1546]) + _1546 + -(mem[_1546] % 32) + 228 len mem[_1546] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1546]) + _1546 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1545 = mem[(32 * idx + 1) + 128]
                                _1626 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1626 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1626 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1626 + 68] = 0
                                mem[_1626 + 100] = address(_1545)
                                mem[_1626 + 132] = 128
                                mem[_1626 + 164] = mem[_1626]
                                s = 0
                                while s < mem[_1626]:
                                    mem[s + _1626 + 196] = mem[s + _1626 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1626] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1545), 128, mem[_1626 + 164 len mem[_1626] + 32]
                                else:
                                    mem[floor32(mem[_1626]) + _1626 + 196] = mem[floor32(mem[_1626]) + _1626 + -(mem[_1626] % 32) + 228 len mem[_1626] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1545), 128, mem[_1626], mem[_1626 + 196 len floor32(mem[_1626]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    else:
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 261
        mem[(32 * arg1.length) + (32 * arg2.length) + 260] = return_data.size
        mem[(32 * arg1.length) + (32 * arg2.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        34,
                        0x446d795472616e7366657248656c706572313a205452414e534645525f4641494c45,
                        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 363 len 30]
        if not return_data.size:
            idx = 0
            while idx < arg2.length - 1:
                require idx < mem[(32 * arg1.length) + 128]
                _1308 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx + 1 < mem[(32 * arg1.length) + 128]
                _1314 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                require idx < mem[96]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                    _1336 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1336)
                    require ext_code.size(address(_1308))
                    staticcall address(_1308).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1336)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1308) == address(_1308):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1308) == address(_1308):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1549 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1549 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1549 + 36] = 0
                                mem[_1549 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1549 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1549 + 132] = 128
                                mem[_1549 + 164] = mem[_1549]
                                s = 0
                                while s < mem[_1549]:
                                    mem[s + _1549 + 196] = mem[s + _1549 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1549] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1549] + _1549 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1549]) + _1549 + 196] = mem[floor32(mem[_1549]) + _1549 + -(mem[_1549] % 32) + 228 len mem[_1549] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1549]) + _1549 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1548 = mem[(32 * idx + 1) + 128]
                                _1628 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1628 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1628 + 36] = 0
                                mem[_1628 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1628 + 100] = address(_1548)
                                mem[_1628 + 132] = 128
                                mem[_1628 + 164] = mem[_1628]
                                s = 0
                                while s < mem[_1628]:
                                    mem[s + _1628 + 196] = mem[s + _1628 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1628] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1548), 128, mem[_1628 + 164 len mem[_1628] + 32]
                                else:
                                    mem[floor32(mem[_1628]) + _1628 + 196] = mem[floor32(mem[_1628]) + _1628 + -(mem[_1628] % 32) + 228 len mem[_1628] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1548), 128, mem[_1628], mem[_1628 + 196 len floor32(mem[_1628]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1552 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1552 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1552 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1552 + 68] = 0
                                mem[_1552 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1552 + 132] = 128
                                mem[_1552 + 164] = mem[_1552]
                                s = 0
                                while s < mem[_1552]:
                                    mem[s + _1552 + 196] = mem[s + _1552 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1552] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1552 + 164 len mem[_1552] + 32]
                                else:
                                    mem[floor32(mem[_1552]) + _1552 + 196] = mem[floor32(mem[_1552]) + _1552 + -(mem[_1552] % 32) + 228 len mem[_1552] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1552], mem[_1552 + 196 len floor32(mem[_1552]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1551 = mem[(32 * idx + 1) + 128]
                                _1630 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1630 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1630 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1630 + 68] = 0
                                mem[_1630 + 100] = address(_1551)
                                mem[_1630 + 132] = 128
                                mem[_1630 + 164] = mem[_1630]
                                s = 0
                                while s < mem[_1630]:
                                    mem[s + _1630 + 196] = mem[s + _1630 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1630] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1630] + _1630 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1630]) + _1630 + 196] = mem[floor32(mem[_1630]) + _1630 + -(mem[_1630] % 32) + 228 len mem[_1630] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1630]) + _1630 + -mem[64] + 224]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1308) == address(_1308):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1555 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1555 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1555 + 36] = 0
                                mem[_1555 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1555 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1555 + 132] = 128
                                mem[_1555 + 164] = mem[_1555]
                                s = 0
                                while s < mem[_1555]:
                                    mem[s + _1555 + 196] = mem[s + _1555 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1555] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1555] + _1555 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1555]) + _1555 + 196] = mem[floor32(mem[_1555]) + _1555 + -(mem[_1555] % 32) + 228 len mem[_1555] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1555]) + _1555 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1554 = mem[(32 * idx + 1) + 128]
                                _1632 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1632 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1632 + 36] = 0
                                mem[_1632 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1632 + 100] = address(_1554)
                                mem[_1632 + 132] = 128
                                mem[_1632 + 164] = mem[_1632]
                                s = 0
                                while s < mem[_1632]:
                                    mem[s + _1632 + 196] = mem[s + _1632 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1632] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1632] + _1632 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1632]) + _1632 + 196] = mem[floor32(mem[_1632]) + _1632 + -(mem[_1632] % 32) + 228 len mem[_1632] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1632]) + _1632 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1558 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1558 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1558 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1558 + 68] = 0
                                mem[_1558 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1558 + 132] = 128
                                mem[_1558 + 164] = mem[_1558]
                                s = 0
                                while s < mem[_1558]:
                                    mem[s + _1558 + 196] = mem[s + _1558 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1558] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1558 + 164 len mem[_1558] + 32]
                                else:
                                    mem[floor32(mem[_1558]) + _1558 + 196] = mem[floor32(mem[_1558]) + _1558 + -(mem[_1558] % 32) + 228 len mem[_1558] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1558], mem[_1558 + 196 len floor32(mem[_1558]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1557 = mem[(32 * idx + 1) + 128]
                                _1634 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1634 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1634 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1634 + 68] = 0
                                mem[_1634 + 100] = address(_1557)
                                mem[_1634 + 132] = 128
                                mem[_1634 + 164] = mem[_1634]
                                s = 0
                                while s < mem[_1634]:
                                    mem[s + _1634 + 196] = mem[s + _1634 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1634] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1557), 128, mem[_1634 + 164 len mem[_1634] + 32]
                                else:
                                    mem[floor32(mem[_1634]) + _1634 + 196] = mem[floor32(mem[_1634]) + _1634 + -(mem[_1634] % 32) + 228 len mem[_1634] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1557), 128, mem[_1634], mem[_1634 + 196 len floor32(mem[_1634]) + 32]
                else:
                    _1339 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1339)
                    require ext_code.size(address(_1308))
                    staticcall address(_1308).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1339)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1314) == address(_1308):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1308) == address(_1314):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1561 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1561 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1561 + 36] = 0
                                mem[_1561 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1561 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1561 + 132] = 128
                                mem[_1561 + 164] = mem[_1561]
                                s = 0
                                while s < mem[_1561]:
                                    mem[s + _1561 + 196] = mem[s + _1561 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1561] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1561] + _1561 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1561]) + _1561 + 196] = mem[floor32(mem[_1561]) + _1561 + -(mem[_1561] % 32) + 228 len mem[_1561] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1561]) + _1561 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1560 = mem[(32 * idx + 1) + 128]
                                _1636 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1636 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1636 + 36] = 0
                                mem[_1636 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1636 + 100] = address(_1560)
                                mem[_1636 + 132] = 128
                                mem[_1636 + 164] = mem[_1636]
                                s = 0
                                while s < mem[_1636]:
                                    mem[s + _1636 + 196] = mem[s + _1636 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1636] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1636] + _1636 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1636]) + _1636 + 196] = mem[floor32(mem[_1636]) + _1636 + -(mem[_1636] % 32) + 228 len mem[_1636] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1636]) + _1636 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1564 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1564 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1564 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1564 + 68] = 0
                                mem[_1564 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1564 + 132] = 128
                                mem[_1564 + 164] = mem[_1564]
                                s = 0
                                while s < mem[_1564]:
                                    mem[s + _1564 + 196] = mem[s + _1564 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1564] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1564] + _1564 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1564]) + _1564 + 196] = mem[floor32(mem[_1564]) + _1564 + -(mem[_1564] % 32) + 228 len mem[_1564] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1564]) + _1564 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1563 = mem[(32 * idx + 1) + 128]
                                _1638 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1638 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1638 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1638 + 68] = 0
                                mem[_1638 + 100] = address(_1563)
                                mem[_1638 + 132] = 128
                                mem[_1638 + 164] = mem[_1638]
                                s = 0
                                while s < mem[_1638]:
                                    mem[s + _1638 + 196] = mem[s + _1638 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1638] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1563), 128, mem[_1638 + 164 len mem[_1638] + 32]
                                else:
                                    mem[floor32(mem[_1638]) + _1638 + 196] = mem[floor32(mem[_1638]) + _1638 + -(mem[_1638] % 32) + 228 len mem[_1638] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1563), 128, mem[_1638], mem[_1638 + 196 len floor32(mem[_1638]) + 32]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1308) == address(_1314):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1567 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1567 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1567 + 36] = 0
                                mem[_1567 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1567 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1567 + 132] = 128
                                mem[_1567 + 164] = mem[_1567]
                                s = 0
                                while s < mem[_1567]:
                                    mem[s + _1567 + 196] = mem[s + _1567 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1567] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1567] + _1567 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1567]) + _1567 + 196] = mem[floor32(mem[_1567]) + _1567 + -(mem[_1567] % 32) + 228 len mem[_1567] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1567]) + _1567 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1566 = mem[(32 * idx + 1) + 128]
                                _1640 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1640 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1640 + 36] = 0
                                mem[_1640 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1640 + 100] = address(_1566)
                                mem[_1640 + 132] = 128
                                mem[_1640 + 164] = mem[_1640]
                                s = 0
                                while s < mem[_1640]:
                                    mem[s + _1640 + 196] = mem[s + _1640 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1640] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1566), 128, mem[_1640 + 164 len mem[_1640] + 32]
                                else:
                                    mem[floor32(mem[_1640]) + _1640 + 196] = mem[floor32(mem[_1640]) + _1640 + -(mem[_1640] % 32) + 228 len mem[_1640] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1566), 128, mem[_1640], mem[_1640 + 196 len floor32(mem[_1640]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1570 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1570 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1570 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1570 + 68] = 0
                                mem[_1570 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1570 + 132] = 128
                                mem[_1570 + 164] = mem[_1570]
                                s = 0
                                while s < mem[_1570]:
                                    mem[s + _1570 + 196] = mem[s + _1570 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1570] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1570 + 164 len mem[_1570] + 32]
                                else:
                                    mem[floor32(mem[_1570]) + _1570 + 196] = mem[floor32(mem[_1570]) + _1570 + -(mem[_1570] % 32) + 228 len mem[_1570] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1570], mem[_1570 + 196 len floor32(mem[_1570]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1569 = mem[(32 * idx + 1) + 128]
                                _1642 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1642 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1642 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1642 + 68] = 0
                                mem[_1642 + 100] = address(_1569)
                                mem[_1642 + 132] = 128
                                mem[_1642 + 164] = mem[_1642]
                                s = 0
                                while s < mem[_1642]:
                                    mem[s + _1642 + 196] = mem[s + _1642 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1642] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1642] + _1642 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1642]) + _1642 + 196] = mem[floor32(mem[_1642]) + _1642 + -(mem[_1642] % 32) + 228 len mem[_1642] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1642]) + _1642 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require return_data.size >= 32
            if not mem[(32 * arg1.length) + (32 * arg2.length) + 292]:
                revert with 0, 
                            32,
                            34,
                            0x446d795472616e7366657248656c706572313a205452414e534645525f4641494c45,
                            mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 363 len 30]
            idx = 0
            while idx < arg2.length - 1:
                require idx < mem[(32 * arg1.length) + 128]
                _1310 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx + 1 < mem[(32 * arg1.length) + 128]
                _1315 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                require idx < mem[96]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                    _1342 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1342)
                    require ext_code.size(address(_1310))
                    staticcall address(_1310).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1342)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1310) == address(_1310):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1310) == address(_1310):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1573 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1573 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1573 + 36] = 0
                                mem[_1573 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1573 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1573 + 132] = 128
                                mem[_1573 + 164] = mem[_1573]
                                s = 0
                                while s < mem[_1573]:
                                    mem[s + _1573 + 196] = mem[s + _1573 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1573] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1573 + 164 len mem[_1573] + 32]
                                else:
                                    mem[floor32(mem[_1573]) + _1573 + 196] = mem[floor32(mem[_1573]) + _1573 + -(mem[_1573] % 32) + 228 len mem[_1573] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1573], mem[_1573 + 196 len floor32(mem[_1573]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1572 = mem[(32 * idx + 1) + 128]
                                _1644 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1644 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1644 + 36] = 0
                                mem[_1644 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1644 + 100] = address(_1572)
                                mem[_1644 + 132] = 128
                                mem[_1644 + 164] = mem[_1644]
                                s = 0
                                while s < mem[_1644]:
                                    mem[s + _1644 + 196] = mem[s + _1644 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1644] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1644] + _1644 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1644]) + _1644 + 196] = mem[floor32(mem[_1644]) + _1644 + -(mem[_1644] % 32) + 228 len mem[_1644] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1644]) + _1644 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1576 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1576 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1576 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1576 + 68] = 0
                                mem[_1576 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1576 + 132] = 128
                                mem[_1576 + 164] = mem[_1576]
                                s = 0
                                while s < mem[_1576]:
                                    mem[s + _1576 + 196] = mem[s + _1576 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1576] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1576] + _1576 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1576]) + _1576 + 196] = mem[floor32(mem[_1576]) + _1576 + -(mem[_1576] % 32) + 228 len mem[_1576] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1576]) + _1576 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1575 = mem[(32 * idx + 1) + 128]
                                _1646 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1646 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1646 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1646 + 68] = 0
                                mem[_1646 + 100] = address(_1575)
                                mem[_1646 + 132] = 128
                                mem[_1646 + 164] = mem[_1646]
                                s = 0
                                while s < mem[_1646]:
                                    mem[s + _1646 + 196] = mem[s + _1646 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1646] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1575), 128, mem[_1646 + 164 len mem[_1646] + 32]
                                else:
                                    mem[floor32(mem[_1646]) + _1646 + 196] = mem[floor32(mem[_1646]) + _1646 + -(mem[_1646] % 32) + 228 len mem[_1646] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1575), 128, mem[_1646], mem[_1646 + 196 len floor32(mem[_1646]) + 32]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1310) == address(_1310):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1579 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1579 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1579 + 36] = 0
                                mem[_1579 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1579 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1579 + 132] = 128
                                mem[_1579 + 164] = mem[_1579]
                                s = 0
                                while s < mem[_1579]:
                                    mem[s + _1579 + 196] = mem[s + _1579 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1579] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1579 + 164 len mem[_1579] + 32]
                                else:
                                    mem[floor32(mem[_1579]) + _1579 + 196] = mem[floor32(mem[_1579]) + _1579 + -(mem[_1579] % 32) + 228 len mem[_1579] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1579], mem[_1579 + 196 len floor32(mem[_1579]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1578 = mem[(32 * idx + 1) + 128]
                                _1648 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1648 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1648 + 36] = 0
                                mem[_1648 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1648 + 100] = address(_1578)
                                mem[_1648 + 132] = 128
                                mem[_1648 + 164] = mem[_1648]
                                s = 0
                                while s < mem[_1648]:
                                    mem[s + _1648 + 196] = mem[s + _1648 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1648] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1648] + _1648 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1648]) + _1648 + 196] = mem[floor32(mem[_1648]) + _1648 + -(mem[_1648] % 32) + 228 len mem[_1648] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1648]) + _1648 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1582 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1582 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1582 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1582 + 68] = 0
                                mem[_1582 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1582 + 132] = 128
                                mem[_1582 + 164] = mem[_1582]
                                s = 0
                                while s < mem[_1582]:
                                    mem[s + _1582 + 196] = mem[s + _1582 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1582] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1582] + _1582 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1582]) + _1582 + 196] = mem[floor32(mem[_1582]) + _1582 + -(mem[_1582] % 32) + 228 len mem[_1582] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1582]) + _1582 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1581 = mem[(32 * idx + 1) + 128]
                                _1650 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1650 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1650 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1650 + 68] = 0
                                mem[_1650 + 100] = address(_1581)
                                mem[_1650 + 132] = 128
                                mem[_1650 + 164] = mem[_1650]
                                s = 0
                                while s < mem[_1650]:
                                    mem[s + _1650 + 196] = mem[s + _1650 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1650] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1581), 128, mem[_1650 + 164 len mem[_1650] + 32]
                                else:
                                    mem[floor32(mem[_1650]) + _1650 + 196] = mem[floor32(mem[_1650]) + _1650 + -(mem[_1650] % 32) + 228 len mem[_1650] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1581), 128, mem[_1650], mem[_1650 + 196 len floor32(mem[_1650]) + 32]
                else:
                    _1345 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1345)
                    require ext_code.size(address(_1310))
                    staticcall address(_1310).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1345)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1315) == address(_1310):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1310) == address(_1315):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1585 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1585 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1585 + 36] = 0
                                mem[_1585 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1585 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1585 + 132] = 128
                                mem[_1585 + 164] = mem[_1585]
                                s = 0
                                while s < mem[_1585]:
                                    mem[s + _1585 + 196] = mem[s + _1585 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1585] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1585] + _1585 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1585]) + _1585 + 196] = mem[floor32(mem[_1585]) + _1585 + -(mem[_1585] % 32) + 228 len mem[_1585] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1585]) + _1585 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1584 = mem[(32 * idx + 1) + 128]
                                _1652 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1652 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1652 + 36] = 0
                                mem[_1652 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1652 + 100] = address(_1584)
                                mem[_1652 + 132] = 128
                                mem[_1652 + 164] = mem[_1652]
                                s = 0
                                while s < mem[_1652]:
                                    mem[s + _1652 + 196] = mem[s + _1652 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1652] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1584), 128, mem[_1652 + 164 len mem[_1652] + 32]
                                else:
                                    mem[floor32(mem[_1652]) + _1652 + 196] = mem[floor32(mem[_1652]) + _1652 + -(mem[_1652] % 32) + 228 len mem[_1652] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1584), 128, mem[_1652], mem[_1652 + 196 len floor32(mem[_1652]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1588 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1588 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1588 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1588 + 68] = 0
                                mem[_1588 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1588 + 132] = 128
                                mem[_1588 + 164] = mem[_1588]
                                s = 0
                                while s < mem[_1588]:
                                    mem[s + _1588 + 196] = mem[s + _1588 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1588] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1588 + 164 len mem[_1588] + 32]
                                else:
                                    mem[floor32(mem[_1588]) + _1588 + 196] = mem[floor32(mem[_1588]) + _1588 + -(mem[_1588] % 32) + 228 len mem[_1588] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1588], mem[_1588 + 196 len floor32(mem[_1588]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1587 = mem[(32 * idx + 1) + 128]
                                _1654 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1654 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1654 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1654 + 68] = 0
                                mem[_1654 + 100] = address(_1587)
                                mem[_1654 + 132] = 128
                                mem[_1654 + 164] = mem[_1654]
                                s = 0
                                while s < mem[_1654]:
                                    mem[s + _1654 + 196] = mem[s + _1654 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1654] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1654] + _1654 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1654]) + _1654 + 196] = mem[floor32(mem[_1654]) + _1654 + -(mem[_1654] % 32) + 228 len mem[_1654] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1654]) + _1654 + -mem[64] + 224]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1310) == address(_1315):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1591 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1591 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1591 + 36] = 0
                                mem[_1591 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1591 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1591 + 132] = 128
                                mem[_1591 + 164] = mem[_1591]
                                s = 0
                                while s < mem[_1591]:
                                    mem[s + _1591 + 196] = mem[s + _1591 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1591] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1591] + _1591 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1591]) + _1591 + 196] = mem[floor32(mem[_1591]) + _1591 + -(mem[_1591] % 32) + 228 len mem[_1591] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1591]) + _1591 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1590 = mem[(32 * idx + 1) + 128]
                                _1656 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1656 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1656 + 36] = 0
                                mem[_1656 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1656 + 100] = address(_1590)
                                mem[_1656 + 132] = 128
                                mem[_1656 + 164] = mem[_1656]
                                s = 0
                                while s < mem[_1656]:
                                    mem[s + _1656 + 196] = mem[s + _1656 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1656] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1656] + _1656 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1656]) + _1656 + 196] = mem[floor32(mem[_1656]) + _1656 + -(mem[_1656] % 32) + 228 len mem[_1656] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1656]) + _1656 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1594 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1594 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1594 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1594 + 68] = 0
                                mem[_1594 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1594 + 132] = 128
                                mem[_1594 + 164] = mem[_1594]
                                s = 0
                                while s < mem[_1594]:
                                    mem[s + _1594 + 196] = mem[s + _1594 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1594] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1594 + 164 len mem[_1594] + 32]
                                else:
                                    mem[floor32(mem[_1594]) + _1594 + 196] = mem[floor32(mem[_1594]) + _1594 + -(mem[_1594] % 32) + 228 len mem[_1594] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1594], mem[_1594 + 196 len floor32(mem[_1594]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1593 = mem[(32 * idx + 1) + 128]
                                _1658 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1658 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1658 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1658 + 68] = 0
                                mem[_1658 + 100] = address(_1593)
                                mem[_1658 + 132] = 128
                                mem[_1658 + 164] = mem[_1658]
                                s = 0
                                while s < mem[_1658]:
                                    mem[s + _1658 + 196] = mem[s + _1658 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1658] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1593), 128, mem[_1658 + 164 len mem[_1658] + 32]
                                else:
                                    mem[floor32(mem[_1658]) + _1658 + 196] = mem[floor32(mem[_1658]) + _1658 + -(mem[_1658] % 32) + 228 len mem[_1658] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1593), 128, mem[_1658], mem[_1658 + 196 len floor32(mem[_1658]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
}

function sub_fd078925(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == owner
    require 0 < arg2.length
    _4 = mem[(32 * arg1.length) + 160]
    require 0 < arg1.length
    require 0 < arg2.length
    require ext_code.size(mem[(32 * arg1.length) + 172 len 20])
    staticcall mem[(32 * arg1.length) + 172 len 20].0x70a08231 with:
            gas gas_remaining wei
           args 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = mem[140 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + 260] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 100
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 292
    mem[(32 * arg1.length) + (32 * arg2.length) + 196 len 28] = 0x6bbcc8b410696f6717a6b24dd370866a
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 4] = unknown_0x23b872dd(?????)
    mem[(32 * arg1.length) + (32 * arg2.length) + 292 len 96] = unknown_0x23b872dd(?????), 0x6bbcc8b410696f6717a6b24d, 0, mem[140 len 20], ext_call.return_data[0 len 28]
    mem[(32 * arg1.length) + (32 * arg2.length) + 416 len 4] = ext_call.return_data[20 len 4]
    call address(_4).mem[(32 * arg1.length) + (32 * arg2.length) + 256 len 4] with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[(32 * arg1.length) + (32 * arg2.length) + 388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        38,
                        0xfe6d795472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 398 len 18],
                        ext_call.return_data[20 len 4],
                        mem[(32 * arg1.length) + (32 * arg2.length) + 420 len 4]
        if not arg1.length:
            idx = 0
            while idx < arg2.length - 1:
                require idx < mem[(32 * arg1.length) + 128]
                _1304 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx + 1 < mem[(32 * arg1.length) + 128]
                _1312 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                require idx < mem[96]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                    _1324 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1324)
                    require ext_code.size(address(_1304))
                    staticcall address(_1304).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1324)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1304) == address(_1304):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1304) == address(_1304):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1501 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1501 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1501 + 36] = 0
                                mem[_1501 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1501 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1501 + 132] = 128
                                mem[_1501 + 164] = mem[_1501]
                                s = 0
                                while s < mem[_1501]:
                                    mem[s + _1501 + 196] = mem[s + _1501 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1501] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1501 + 164 len mem[_1501] + 32]
                                else:
                                    mem[floor32(mem[_1501]) + _1501 + 196] = mem[floor32(mem[_1501]) + _1501 + -(mem[_1501] % 32) + 228 len mem[_1501] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1501], mem[_1501 + 196 len floor32(mem[_1501]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1500 = mem[(32 * idx + 1) + 128]
                                _1596 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1596 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1596 + 36] = 0
                                mem[_1596 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1596 + 100] = address(_1500)
                                mem[_1596 + 132] = 128
                                mem[_1596 + 164] = mem[_1596]
                                s = 0
                                while s < mem[_1596]:
                                    mem[s + _1596 + 196] = mem[s + _1596 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1596] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1596] + _1596 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1596]) + _1596 + 196] = mem[floor32(mem[_1596]) + _1596 + -(mem[_1596] % 32) + 228 len mem[_1596] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1596]) + _1596 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1504 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1504 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1504 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1504 + 68] = 0
                                mem[_1504 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1504 + 132] = 128
                                mem[_1504 + 164] = mem[_1504]
                                s = 0
                                while s < mem[_1504]:
                                    mem[s + _1504 + 196] = mem[s + _1504 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1504] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1504] + _1504 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1504]) + _1504 + 196] = mem[floor32(mem[_1504]) + _1504 + -(mem[_1504] % 32) + 228 len mem[_1504] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1504]) + _1504 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1503 = mem[(32 * idx + 1) + 128]
                                _1598 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1598 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1598 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1598 + 68] = 0
                                mem[_1598 + 100] = address(_1503)
                                mem[_1598 + 132] = 128
                                mem[_1598 + 164] = mem[_1598]
                                s = 0
                                while s < mem[_1598]:
                                    mem[s + _1598 + 196] = mem[s + _1598 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1598] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1598] + _1598 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1598]) + _1598 + 196] = mem[floor32(mem[_1598]) + _1598 + -(mem[_1598] % 32) + 228 len mem[_1598] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1598]) + _1598 + -mem[64] + 224]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1304) == address(_1304):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1507 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1507 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1507 + 36] = 0
                                mem[_1507 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1507 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1507 + 132] = 128
                                mem[_1507 + 164] = mem[_1507]
                                s = 0
                                while s < mem[_1507]:
                                    mem[s + _1507 + 196] = mem[s + _1507 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1507] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1507] + _1507 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1507]) + _1507 + 196] = mem[floor32(mem[_1507]) + _1507 + -(mem[_1507] % 32) + 228 len mem[_1507] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1507]) + _1507 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1506 = mem[(32 * idx + 1) + 128]
                                _1600 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1600 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1600 + 36] = 0
                                mem[_1600 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1600 + 100] = address(_1506)
                                mem[_1600 + 132] = 128
                                mem[_1600 + 164] = mem[_1600]
                                s = 0
                                while s < mem[_1600]:
                                    mem[s + _1600 + 196] = mem[s + _1600 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1600] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1600] + _1600 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1600]) + _1600 + 196] = mem[floor32(mem[_1600]) + _1600 + -(mem[_1600] % 32) + 228 len mem[_1600] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1600]) + _1600 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1510 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1510 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1510 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1510 + 68] = 0
                                mem[_1510 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1510 + 132] = 128
                                mem[_1510 + 164] = mem[_1510]
                                s = 0
                                while s < mem[_1510]:
                                    mem[s + _1510 + 196] = mem[s + _1510 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1510] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1510] + _1510 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1510]) + _1510 + 196] = mem[floor32(mem[_1510]) + _1510 + -(mem[_1510] % 32) + 228 len mem[_1510] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1510]) + _1510 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1509 = mem[(32 * idx + 1) + 128]
                                _1602 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1602 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1602 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1602 + 68] = 0
                                mem[_1602 + 100] = address(_1509)
                                mem[_1602 + 132] = 128
                                mem[_1602 + 164] = mem[_1602]
                                s = 0
                                while s < mem[_1602]:
                                    mem[s + _1602 + 196] = mem[s + _1602 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1602] % 32:
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1602] + _1602 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1602]) + _1602 + 196] = mem[floor32(mem[_1602]) + _1602 + -(mem[_1602] % 32) + 228 len mem[_1602] % 32]
                                    require ext_code.size(address(_1324))
                                    call address(_1324).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1602]) + _1602 + -mem[64] + 224]
                else:
                    _1327 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1327)
                    require ext_code.size(address(_1304))
                    staticcall address(_1304).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1327)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1312) == address(_1304):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1304) == address(_1312):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1513 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1513 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1513 + 36] = 0
                                mem[_1513 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1513 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1513 + 132] = 128
                                mem[_1513 + 164] = mem[_1513]
                                s = 0
                                while s < mem[_1513]:
                                    mem[s + _1513 + 196] = mem[s + _1513 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1513] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1513 + 164 len mem[_1513] + 32]
                                else:
                                    mem[floor32(mem[_1513]) + _1513 + 196] = mem[floor32(mem[_1513]) + _1513 + -(mem[_1513] % 32) + 228 len mem[_1513] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1513], mem[_1513 + 196 len floor32(mem[_1513]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1512 = mem[(32 * idx + 1) + 128]
                                _1604 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1604 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1604 + 36] = 0
                                mem[_1604 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1604 + 100] = address(_1512)
                                mem[_1604 + 132] = 128
                                mem[_1604 + 164] = mem[_1604]
                                s = 0
                                while s < mem[_1604]:
                                    mem[s + _1604 + 196] = mem[s + _1604 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1604] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1512), 128, mem[_1604 + 164 len mem[_1604] + 32]
                                else:
                                    mem[floor32(mem[_1604]) + _1604 + 196] = mem[floor32(mem[_1604]) + _1604 + -(mem[_1604] % 32) + 228 len mem[_1604] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1512), 128, mem[_1604], mem[_1604 + 196 len floor32(mem[_1604]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1516 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1516 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1516 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1516 + 68] = 0
                                mem[_1516 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1516 + 132] = 128
                                mem[_1516 + 164] = mem[_1516]
                                s = 0
                                while s < mem[_1516]:
                                    mem[s + _1516 + 196] = mem[s + _1516 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1516] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1516] + _1516 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1516]) + _1516 + 196] = mem[floor32(mem[_1516]) + _1516 + -(mem[_1516] % 32) + 228 len mem[_1516] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1516]) + _1516 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1515 = mem[(32 * idx + 1) + 128]
                                _1606 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1606 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1606 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1606 + 68] = 0
                                mem[_1606 + 100] = address(_1515)
                                mem[_1606 + 132] = 128
                                mem[_1606 + 164] = mem[_1606]
                                s = 0
                                while s < mem[_1606]:
                                    mem[s + _1606 + 196] = mem[s + _1606 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1606] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1515), 128, mem[_1606 + 164 len mem[_1606] + 32]
                                else:
                                    mem[floor32(mem[_1606]) + _1606 + 196] = mem[floor32(mem[_1606]) + _1606 + -(mem[_1606] % 32) + 228 len mem[_1606] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1515), 128, mem[_1606], mem[_1606 + 196 len floor32(mem[_1606]) + 32]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1304) == address(_1312):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1519 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1519 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1519 + 36] = 0
                                mem[_1519 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1519 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1519 + 132] = 128
                                mem[_1519 + 164] = mem[_1519]
                                s = 0
                                while s < mem[_1519]:
                                    mem[s + _1519 + 196] = mem[s + _1519 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1519] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1519 + 164 len mem[_1519] + 32]
                                else:
                                    mem[floor32(mem[_1519]) + _1519 + 196] = mem[floor32(mem[_1519]) + _1519 + -(mem[_1519] % 32) + 228 len mem[_1519] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1519], mem[_1519 + 196 len floor32(mem[_1519]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1518 = mem[(32 * idx + 1) + 128]
                                _1608 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1608 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1608 + 36] = 0
                                mem[_1608 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1608 + 100] = address(_1518)
                                mem[_1608 + 132] = 128
                                mem[_1608 + 164] = mem[_1608]
                                s = 0
                                while s < mem[_1608]:
                                    mem[s + _1608 + 196] = mem[s + _1608 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1608] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1518), 128, mem[_1608 + 164 len mem[_1608] + 32]
                                else:
                                    mem[floor32(mem[_1608]) + _1608 + 196] = mem[floor32(mem[_1608]) + _1608 + -(mem[_1608] % 32) + 228 len mem[_1608] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1518), 128, mem[_1608], mem[_1608 + 196 len floor32(mem[_1608]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1522 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1522 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1522 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1522 + 68] = 0
                                mem[_1522 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1522 + 132] = 128
                                mem[_1522 + 164] = mem[_1522]
                                s = 0
                                while s < mem[_1522]:
                                    mem[s + _1522 + 196] = mem[s + _1522 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1522] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1522 + 164 len mem[_1522] + 32]
                                else:
                                    mem[floor32(mem[_1522]) + _1522 + 196] = mem[floor32(mem[_1522]) + _1522 + -(mem[_1522] % 32) + 228 len mem[_1522] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1522], mem[_1522 + 196 len floor32(mem[_1522]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1521 = mem[(32 * idx + 1) + 128]
                                _1610 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1610 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1610 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1610 + 68] = 0
                                mem[_1610 + 100] = address(_1521)
                                mem[_1610 + 132] = 128
                                mem[_1610 + 164] = mem[_1610]
                                s = 0
                                while s < mem[_1610]:
                                    mem[s + _1610 + 196] = mem[s + _1610 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1610] % 32:
                                    require ext_code.size(address(_1327))
                                    call address(_1327).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1610] + _1610 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1610]) + _1610 + 196] = mem[floor32(mem[_1610]) + _1610 + -(mem[_1610] % 32) + 228 len mem[_1610] % 32]
                                    require ext_code.size(address(_1327))
                                    call address(_1327).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1610]) + _1610 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require arg1.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            38,
                            0xfe6d795472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(32 * arg1.length) + (32 * arg2.length) + 398 len 18],
                            ext_call.return_data[20 len 4],
                            mem[(32 * arg1.length) + (32 * arg2.length) + 420 len 4]
            idx = 0
            while idx < arg2.length - 1:
                require idx < mem[(32 * arg1.length) + 128]
                _1306 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx + 1 < mem[(32 * arg1.length) + 128]
                _1313 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                require idx < mem[96]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                    _1330 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1330)
                    require ext_code.size(address(_1306))
                    staticcall address(_1306).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1330)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1306) == address(_1306):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1306) == address(_1306):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1525 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1525 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1525 + 36] = 0
                                mem[_1525 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1525 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1525 + 132] = 128
                                mem[_1525 + 164] = mem[_1525]
                                s = 0
                                while s < mem[_1525]:
                                    mem[s + _1525 + 196] = mem[s + _1525 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1525] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1525] + _1525 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1525]) + _1525 + 196] = mem[floor32(mem[_1525]) + _1525 + -(mem[_1525] % 32) + 228 len mem[_1525] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1525]) + _1525 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1524 = mem[(32 * idx + 1) + 128]
                                _1612 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1612 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1612 + 36] = 0
                                mem[_1612 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1612 + 100] = address(_1524)
                                mem[_1612 + 132] = 128
                                mem[_1612 + 164] = mem[_1612]
                                s = 0
                                while s < mem[_1612]:
                                    mem[s + _1612 + 196] = mem[s + _1612 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1612] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1524), 128, mem[_1612 + 164 len mem[_1612] + 32]
                                else:
                                    mem[floor32(mem[_1612]) + _1612 + 196] = mem[floor32(mem[_1612]) + _1612 + -(mem[_1612] % 32) + 228 len mem[_1612] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1524), 128, mem[_1612], mem[_1612 + 196 len floor32(mem[_1612]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1528 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1528 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1528 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1528 + 68] = 0
                                mem[_1528 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1528 + 132] = 128
                                mem[_1528 + 164] = mem[_1528]
                                s = 0
                                while s < mem[_1528]:
                                    mem[s + _1528 + 196] = mem[s + _1528 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1528] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1528 + 164 len mem[_1528] + 32]
                                else:
                                    mem[floor32(mem[_1528]) + _1528 + 196] = mem[floor32(mem[_1528]) + _1528 + -(mem[_1528] % 32) + 228 len mem[_1528] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1528], mem[_1528 + 196 len floor32(mem[_1528]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1527 = mem[(32 * idx + 1) + 128]
                                _1614 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1614 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1614 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1614 + 68] = 0
                                mem[_1614 + 100] = address(_1527)
                                mem[_1614 + 132] = 128
                                mem[_1614 + 164] = mem[_1614]
                                s = 0
                                while s < mem[_1614]:
                                    mem[s + _1614 + 196] = mem[s + _1614 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1614] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1527), 128, mem[_1614 + 164 len mem[_1614] + 32]
                                else:
                                    mem[floor32(mem[_1614]) + _1614 + 196] = mem[floor32(mem[_1614]) + _1614 + -(mem[_1614] % 32) + 228 len mem[_1614] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1527), 128, mem[_1614], mem[_1614 + 196 len floor32(mem[_1614]) + 32]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1306) == address(_1306):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1531 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1531 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1531 + 36] = 0
                                mem[_1531 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1531 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1531 + 132] = 128
                                mem[_1531 + 164] = mem[_1531]
                                s = 0
                                while s < mem[_1531]:
                                    mem[s + _1531 + 196] = mem[s + _1531 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1531] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1531] + _1531 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1531]) + _1531 + 196] = mem[floor32(mem[_1531]) + _1531 + -(mem[_1531] % 32) + 228 len mem[_1531] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1531]) + _1531 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1530 = mem[(32 * idx + 1) + 128]
                                _1616 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1616 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1616 + 36] = 0
                                mem[_1616 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1616 + 100] = address(_1530)
                                mem[_1616 + 132] = 128
                                mem[_1616 + 164] = mem[_1616]
                                s = 0
                                while s < mem[_1616]:
                                    mem[s + _1616 + 196] = mem[s + _1616 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1616] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1530), 128, mem[_1616 + 164 len mem[_1616] + 32]
                                else:
                                    mem[floor32(mem[_1616]) + _1616 + 196] = mem[floor32(mem[_1616]) + _1616 + -(mem[_1616] % 32) + 228 len mem[_1616] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1530), 128, mem[_1616], mem[_1616 + 196 len floor32(mem[_1616]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1534 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1534 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1534 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1534 + 68] = 0
                                mem[_1534 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1534 + 132] = 128
                                mem[_1534 + 164] = mem[_1534]
                                s = 0
                                while s < mem[_1534]:
                                    mem[s + _1534 + 196] = mem[s + _1534 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1534] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1534 + 164 len mem[_1534] + 32]
                                else:
                                    mem[floor32(mem[_1534]) + _1534 + 196] = mem[floor32(mem[_1534]) + _1534 + -(mem[_1534] % 32) + 228 len mem[_1534] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1534], mem[_1534 + 196 len floor32(mem[_1534]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1533 = mem[(32 * idx + 1) + 128]
                                _1618 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1618 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1618 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1618 + 68] = 0
                                mem[_1618 + 100] = address(_1533)
                                mem[_1618 + 132] = 128
                                mem[_1618 + 164] = mem[_1618]
                                s = 0
                                while s < mem[_1618]:
                                    mem[s + _1618 + 196] = mem[s + _1618 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1618] % 32:
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1533), 128, mem[_1618 + 164 len mem[_1618] + 32]
                                else:
                                    mem[floor32(mem[_1618]) + _1618 + 196] = mem[floor32(mem[_1618]) + _1618 + -(mem[_1618] % 32) + 228 len mem[_1618] % 32]
                                    require ext_code.size(address(_1330))
                                    call address(_1330).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1533), 128, mem[_1618], mem[_1618 + 196 len floor32(mem[_1618]) + 32]
                else:
                    _1333 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1333)
                    require ext_code.size(address(_1306))
                    staticcall address(_1306).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1333)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1313) == address(_1306):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1306) == address(_1313):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1537 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1537 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1537 + 36] = 0
                                mem[_1537 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1537 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1537 + 132] = 128
                                mem[_1537 + 164] = mem[_1537]
                                s = 0
                                while s < mem[_1537]:
                                    mem[s + _1537 + 196] = mem[s + _1537 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1537] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1537 + 164 len mem[_1537] + 32]
                                else:
                                    mem[floor32(mem[_1537]) + _1537 + 196] = mem[floor32(mem[_1537]) + _1537 + -(mem[_1537] % 32) + 228 len mem[_1537] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1537], mem[_1537 + 196 len floor32(mem[_1537]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1536 = mem[(32 * idx + 1) + 128]
                                _1620 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1620 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1620 + 36] = 0
                                mem[_1620 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1620 + 100] = address(_1536)
                                mem[_1620 + 132] = 128
                                mem[_1620 + 164] = mem[_1620]
                                s = 0
                                while s < mem[_1620]:
                                    mem[s + _1620 + 196] = mem[s + _1620 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1620] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1620] + _1620 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1620]) + _1620 + 196] = mem[floor32(mem[_1620]) + _1620 + -(mem[_1620] % 32) + 228 len mem[_1620] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1620]) + _1620 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1540 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1540 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1540 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1540 + 68] = 0
                                mem[_1540 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1540 + 132] = 128
                                mem[_1540 + 164] = mem[_1540]
                                s = 0
                                while s < mem[_1540]:
                                    mem[s + _1540 + 196] = mem[s + _1540 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1540] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1540 + 164 len mem[_1540] + 32]
                                else:
                                    mem[floor32(mem[_1540]) + _1540 + 196] = mem[floor32(mem[_1540]) + _1540 + -(mem[_1540] % 32) + 228 len mem[_1540] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1540], mem[_1540 + 196 len floor32(mem[_1540]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1539 = mem[(32 * idx + 1) + 128]
                                _1622 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1622 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1622 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1622 + 68] = 0
                                mem[_1622 + 100] = address(_1539)
                                mem[_1622 + 132] = 128
                                mem[_1622 + 164] = mem[_1622]
                                s = 0
                                while s < mem[_1622]:
                                    mem[s + _1622 + 196] = mem[s + _1622 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1622] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1539), 128, mem[_1622 + 164 len mem[_1622] + 32]
                                else:
                                    mem[floor32(mem[_1622]) + _1622 + 196] = mem[floor32(mem[_1622]) + _1622 + -(mem[_1622] % 32) + 228 len mem[_1622] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1539), 128, mem[_1622], mem[_1622 + 196 len floor32(mem[_1622]) + 32]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1306) == address(_1313):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1543 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1543 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1543 + 36] = 0
                                mem[_1543 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1543 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1543 + 132] = 128
                                mem[_1543 + 164] = mem[_1543]
                                s = 0
                                while s < mem[_1543]:
                                    mem[s + _1543 + 196] = mem[s + _1543 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1543] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1543] + _1543 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1543]) + _1543 + 196] = mem[floor32(mem[_1543]) + _1543 + -(mem[_1543] % 32) + 228 len mem[_1543] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1543]) + _1543 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1542 = mem[(32 * idx + 1) + 128]
                                _1624 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1624 + 36] = 0
                                mem[_1624 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1624 + 100] = address(_1542)
                                mem[_1624 + 132] = 128
                                mem[_1624 + 164] = mem[_1624]
                                s = 0
                                while s < mem[_1624]:
                                    mem[s + _1624 + 196] = mem[s + _1624 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1624] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1542), 128, mem[_1624 + 164 len mem[_1624] + 32]
                                else:
                                    mem[floor32(mem[_1624]) + _1624 + 196] = mem[floor32(mem[_1624]) + _1624 + -(mem[_1624] % 32) + 228 len mem[_1624] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1542), 128, mem[_1624], mem[_1624 + 196 len floor32(mem[_1624]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1546 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1546 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1546 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1546 + 68] = 0
                                mem[_1546 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1546 + 132] = 128
                                mem[_1546 + 164] = mem[_1546]
                                s = 0
                                while s < mem[_1546]:
                                    mem[s + _1546 + 196] = mem[s + _1546 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1546] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1546] + _1546 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1546]) + _1546 + 196] = mem[floor32(mem[_1546]) + _1546 + -(mem[_1546] % 32) + 228 len mem[_1546] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1546]) + _1546 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1545 = mem[(32 * idx + 1) + 128]
                                _1626 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1626 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1626 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1626 + 68] = 0
                                mem[_1626 + 100] = address(_1545)
                                mem[_1626 + 132] = 128
                                mem[_1626 + 164] = mem[_1626]
                                s = 0
                                while s < mem[_1626]:
                                    mem[s + _1626 + 196] = mem[s + _1626 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1626] % 32:
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1545), 128, mem[_1626 + 164 len mem[_1626] + 32]
                                else:
                                    mem[floor32(mem[_1626]) + _1626 + 196] = mem[floor32(mem[_1626]) + _1626 + -(mem[_1626] % 32) + 228 len mem[_1626] % 32]
                                    require ext_code.size(address(_1333))
                                    call address(_1333).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1545), 128, mem[_1626], mem[_1626 + 196 len floor32(mem[_1626]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    else:
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 293
        mem[(32 * arg1.length) + (32 * arg2.length) + 292] = return_data.size
        mem[(32 * arg1.length) + (32 * arg2.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        38,
                        0xfe6d795472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 399 len 26]
        if not return_data.size:
            idx = 0
            while idx < arg2.length - 1:
                require idx < mem[(32 * arg1.length) + 128]
                _1308 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx + 1 < mem[(32 * arg1.length) + 128]
                _1314 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                require idx < mem[96]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                    _1336 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1336)
                    require ext_code.size(address(_1308))
                    staticcall address(_1308).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1336)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1308) == address(_1308):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1308) == address(_1308):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1549 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1549 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1549 + 36] = 0
                                mem[_1549 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1549 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1549 + 132] = 128
                                mem[_1549 + 164] = mem[_1549]
                                s = 0
                                while s < mem[_1549]:
                                    mem[s + _1549 + 196] = mem[s + _1549 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1549] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1549] + _1549 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1549]) + _1549 + 196] = mem[floor32(mem[_1549]) + _1549 + -(mem[_1549] % 32) + 228 len mem[_1549] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1549]) + _1549 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1548 = mem[(32 * idx + 1) + 128]
                                _1628 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1628 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1628 + 36] = 0
                                mem[_1628 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1628 + 100] = address(_1548)
                                mem[_1628 + 132] = 128
                                mem[_1628 + 164] = mem[_1628]
                                s = 0
                                while s < mem[_1628]:
                                    mem[s + _1628 + 196] = mem[s + _1628 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1628] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1548), 128, mem[_1628 + 164 len mem[_1628] + 32]
                                else:
                                    mem[floor32(mem[_1628]) + _1628 + 196] = mem[floor32(mem[_1628]) + _1628 + -(mem[_1628] % 32) + 228 len mem[_1628] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1548), 128, mem[_1628], mem[_1628 + 196 len floor32(mem[_1628]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1552 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1552 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1552 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1552 + 68] = 0
                                mem[_1552 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1552 + 132] = 128
                                mem[_1552 + 164] = mem[_1552]
                                s = 0
                                while s < mem[_1552]:
                                    mem[s + _1552 + 196] = mem[s + _1552 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1552] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1552 + 164 len mem[_1552] + 32]
                                else:
                                    mem[floor32(mem[_1552]) + _1552 + 196] = mem[floor32(mem[_1552]) + _1552 + -(mem[_1552] % 32) + 228 len mem[_1552] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1552], mem[_1552 + 196 len floor32(mem[_1552]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1551 = mem[(32 * idx + 1) + 128]
                                _1630 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1630 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1630 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1630 + 68] = 0
                                mem[_1630 + 100] = address(_1551)
                                mem[_1630 + 132] = 128
                                mem[_1630 + 164] = mem[_1630]
                                s = 0
                                while s < mem[_1630]:
                                    mem[s + _1630 + 196] = mem[s + _1630 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1630] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1630] + _1630 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1630]) + _1630 + 196] = mem[floor32(mem[_1630]) + _1630 + -(mem[_1630] % 32) + 228 len mem[_1630] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1630]) + _1630 + -mem[64] + 224]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1308) == address(_1308):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1555 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1555 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1555 + 36] = 0
                                mem[_1555 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1555 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1555 + 132] = 128
                                mem[_1555 + 164] = mem[_1555]
                                s = 0
                                while s < mem[_1555]:
                                    mem[s + _1555 + 196] = mem[s + _1555 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1555] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1555] + _1555 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1555]) + _1555 + 196] = mem[floor32(mem[_1555]) + _1555 + -(mem[_1555] % 32) + 228 len mem[_1555] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1555]) + _1555 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1554 = mem[(32 * idx + 1) + 128]
                                _1632 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1632 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1632 + 36] = 0
                                mem[_1632 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1632 + 100] = address(_1554)
                                mem[_1632 + 132] = 128
                                mem[_1632 + 164] = mem[_1632]
                                s = 0
                                while s < mem[_1632]:
                                    mem[s + _1632 + 196] = mem[s + _1632 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1632] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1632] + _1632 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1632]) + _1632 + 196] = mem[floor32(mem[_1632]) + _1632 + -(mem[_1632] % 32) + 228 len mem[_1632] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1632]) + _1632 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1558 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1558 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1558 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1558 + 68] = 0
                                mem[_1558 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1558 + 132] = 128
                                mem[_1558 + 164] = mem[_1558]
                                s = 0
                                while s < mem[_1558]:
                                    mem[s + _1558 + 196] = mem[s + _1558 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1558] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1558 + 164 len mem[_1558] + 32]
                                else:
                                    mem[floor32(mem[_1558]) + _1558 + 196] = mem[floor32(mem[_1558]) + _1558 + -(mem[_1558] % 32) + 228 len mem[_1558] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1558], mem[_1558 + 196 len floor32(mem[_1558]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1557 = mem[(32 * idx + 1) + 128]
                                _1634 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1634 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1634 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1634 + 68] = 0
                                mem[_1634 + 100] = address(_1557)
                                mem[_1634 + 132] = 128
                                mem[_1634 + 164] = mem[_1634]
                                s = 0
                                while s < mem[_1634]:
                                    mem[s + _1634 + 196] = mem[s + _1634 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1634] % 32:
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1557), 128, mem[_1634 + 164 len mem[_1634] + 32]
                                else:
                                    mem[floor32(mem[_1634]) + _1634 + 196] = mem[floor32(mem[_1634]) + _1634 + -(mem[_1634] % 32) + 228 len mem[_1634] % 32]
                                    require ext_code.size(address(_1336))
                                    call address(_1336).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1557), 128, mem[_1634], mem[_1634 + 196 len floor32(mem[_1634]) + 32]
                else:
                    _1339 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1339)
                    require ext_code.size(address(_1308))
                    staticcall address(_1308).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1339)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1314) == address(_1308):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1308) == address(_1314):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1561 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1561 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1561 + 36] = 0
                                mem[_1561 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1561 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1561 + 132] = 128
                                mem[_1561 + 164] = mem[_1561]
                                s = 0
                                while s < mem[_1561]:
                                    mem[s + _1561 + 196] = mem[s + _1561 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1561] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1561] + _1561 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1561]) + _1561 + 196] = mem[floor32(mem[_1561]) + _1561 + -(mem[_1561] % 32) + 228 len mem[_1561] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1561]) + _1561 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1560 = mem[(32 * idx + 1) + 128]
                                _1636 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1636 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1636 + 36] = 0
                                mem[_1636 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1636 + 100] = address(_1560)
                                mem[_1636 + 132] = 128
                                mem[_1636 + 164] = mem[_1636]
                                s = 0
                                while s < mem[_1636]:
                                    mem[s + _1636 + 196] = mem[s + _1636 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1636] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1636] + _1636 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1636]) + _1636 + 196] = mem[floor32(mem[_1636]) + _1636 + -(mem[_1636] % 32) + 228 len mem[_1636] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1636]) + _1636 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1564 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1564 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1564 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1564 + 68] = 0
                                mem[_1564 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1564 + 132] = 128
                                mem[_1564 + 164] = mem[_1564]
                                s = 0
                                while s < mem[_1564]:
                                    mem[s + _1564 + 196] = mem[s + _1564 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1564] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1564] + _1564 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1564]) + _1564 + 196] = mem[floor32(mem[_1564]) + _1564 + -(mem[_1564] % 32) + 228 len mem[_1564] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1564]) + _1564 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1563 = mem[(32 * idx + 1) + 128]
                                _1638 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1638 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1638 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1638 + 68] = 0
                                mem[_1638 + 100] = address(_1563)
                                mem[_1638 + 132] = 128
                                mem[_1638 + 164] = mem[_1638]
                                s = 0
                                while s < mem[_1638]:
                                    mem[s + _1638 + 196] = mem[s + _1638 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1638] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1563), 128, mem[_1638 + 164 len mem[_1638] + 32]
                                else:
                                    mem[floor32(mem[_1638]) + _1638 + 196] = mem[floor32(mem[_1638]) + _1638 + -(mem[_1638] % 32) + 228 len mem[_1638] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1563), 128, mem[_1638], mem[_1638 + 196 len floor32(mem[_1638]) + 32]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1308) == address(_1314):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1567 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1567 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1567 + 36] = 0
                                mem[_1567 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1567 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1567 + 132] = 128
                                mem[_1567 + 164] = mem[_1567]
                                s = 0
                                while s < mem[_1567]:
                                    mem[s + _1567 + 196] = mem[s + _1567 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1567] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1567] + _1567 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1567]) + _1567 + 196] = mem[floor32(mem[_1567]) + _1567 + -(mem[_1567] % 32) + 228 len mem[_1567] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1567]) + _1567 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1566 = mem[(32 * idx + 1) + 128]
                                _1640 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1640 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1640 + 36] = 0
                                mem[_1640 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1640 + 100] = address(_1566)
                                mem[_1640 + 132] = 128
                                mem[_1640 + 164] = mem[_1640]
                                s = 0
                                while s < mem[_1640]:
                                    mem[s + _1640 + 196] = mem[s + _1640 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1640] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1566), 128, mem[_1640 + 164 len mem[_1640] + 32]
                                else:
                                    mem[floor32(mem[_1640]) + _1640 + 196] = mem[floor32(mem[_1640]) + _1640 + -(mem[_1640] % 32) + 228 len mem[_1640] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), address(_1566), 128, mem[_1640], mem[_1640 + 196 len floor32(mem[_1640]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1570 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1570 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1570 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1570 + 68] = 0
                                mem[_1570 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1570 + 132] = 128
                                mem[_1570 + 164] = mem[_1570]
                                s = 0
                                while s < mem[_1570]:
                                    mem[s + _1570 + 196] = mem[s + _1570 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1570] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1570 + 164 len mem[_1570] + 32]
                                else:
                                    mem[floor32(mem[_1570]) + _1570 + 196] = mem[floor32(mem[_1570]) + _1570 + -(mem[_1570] % 32) + 228 len mem[_1570] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1570], mem[_1570 + 196 len floor32(mem[_1570]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1569 = mem[(32 * idx + 1) + 128]
                                _1642 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1642 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1642 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1642 + 68] = 0
                                mem[_1642 + 100] = address(_1569)
                                mem[_1642 + 132] = 128
                                mem[_1642 + 164] = mem[_1642]
                                s = 0
                                while s < mem[_1642]:
                                    mem[s + _1642 + 196] = mem[s + _1642 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1642] % 32:
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1642] + _1642 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1642]) + _1642 + 196] = mem[floor32(mem[_1642]) + _1642 + -(mem[_1642] % 32) + 228 len mem[_1642] % 32]
                                    require ext_code.size(address(_1339))
                                    call address(_1339).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1642]) + _1642 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require return_data.size >= 32
            if not mem[(32 * arg1.length) + (32 * arg2.length) + 324]:
                revert with 0, 
                            32,
                            38,
                            0xfe6d795472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 399 len 26]
            idx = 0
            while idx < arg2.length - 1:
                require idx < mem[(32 * arg1.length) + 128]
                _1310 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx + 1 < mem[(32 * arg1.length) + 128]
                _1315 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
                require idx < mem[96]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                    _1342 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1342)
                    require ext_code.size(address(_1310))
                    staticcall address(_1310).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1342)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1310) == address(_1310):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1310) == address(_1310):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1573 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1573 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1573 + 36] = 0
                                mem[_1573 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1573 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1573 + 132] = 128
                                mem[_1573 + 164] = mem[_1573]
                                s = 0
                                while s < mem[_1573]:
                                    mem[s + _1573 + 196] = mem[s + _1573 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1573] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1573 + 164 len mem[_1573] + 32]
                                else:
                                    mem[floor32(mem[_1573]) + _1573 + 196] = mem[floor32(mem[_1573]) + _1573 + -(mem[_1573] % 32) + 228 len mem[_1573] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1573], mem[_1573 + 196 len floor32(mem[_1573]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1572 = mem[(32 * idx + 1) + 128]
                                _1644 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1644 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1644 + 36] = 0
                                mem[_1644 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1644 + 100] = address(_1572)
                                mem[_1644 + 132] = 128
                                mem[_1644 + 164] = mem[_1644]
                                s = 0
                                while s < mem[_1644]:
                                    mem[s + _1644 + 196] = mem[s + _1644 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1644] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1644] + _1644 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1644]) + _1644 + 196] = mem[floor32(mem[_1644]) + _1644 + -(mem[_1644] % 32) + 228 len mem[_1644] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1644]) + _1644 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1576 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1576 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1576 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1576 + 68] = 0
                                mem[_1576 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1576 + 132] = 128
                                mem[_1576 + 164] = mem[_1576]
                                s = 0
                                while s < mem[_1576]:
                                    mem[s + _1576 + 196] = mem[s + _1576 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1576] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1576] + _1576 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1576]) + _1576 + 196] = mem[floor32(mem[_1576]) + _1576 + -(mem[_1576] % 32) + 228 len mem[_1576] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1576]) + _1576 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1575 = mem[(32 * idx + 1) + 128]
                                _1646 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1646 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1646 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1646 + 68] = 0
                                mem[_1646 + 100] = address(_1575)
                                mem[_1646 + 132] = 128
                                mem[_1646 + 164] = mem[_1646]
                                s = 0
                                while s < mem[_1646]:
                                    mem[s + _1646 + 196] = mem[s + _1646 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1646] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1575), 128, mem[_1646 + 164 len mem[_1646] + 32]
                                else:
                                    mem[floor32(mem[_1646]) + _1646 + 196] = mem[floor32(mem[_1646]) + _1646 + -(mem[_1646] % 32) + 228 len mem[_1646] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1575), 128, mem[_1646], mem[_1646 + 196 len floor32(mem[_1646]) + 32]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1310) == address(_1310):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1579 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1579 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1579 + 36] = 0
                                mem[_1579 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1579 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1579 + 132] = 128
                                mem[_1579 + 164] = mem[_1579]
                                s = 0
                                while s < mem[_1579]:
                                    mem[s + _1579 + 196] = mem[s + _1579 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1579] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1579 + 164 len mem[_1579] + 32]
                                else:
                                    mem[floor32(mem[_1579]) + _1579 + 196] = mem[floor32(mem[_1579]) + _1579 + -(mem[_1579] % 32) + 228 len mem[_1579] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1579], mem[_1579 + 196 len floor32(mem[_1579]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1578 = mem[(32 * idx + 1) + 128]
                                _1648 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1648 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1648 + 36] = 0
                                mem[_1648 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1648 + 100] = address(_1578)
                                mem[_1648 + 132] = 128
                                mem[_1648 + 164] = mem[_1648]
                                s = 0
                                while s < mem[_1648]:
                                    mem[s + _1648 + 196] = mem[s + _1648 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1648] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1648] + _1648 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1648]) + _1648 + 196] = mem[floor32(mem[_1648]) + _1648 + -(mem[_1648] % 32) + 228 len mem[_1648] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1648]) + _1648 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1582 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1582 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1582 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1582 + 68] = 0
                                mem[_1582 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1582 + 132] = 128
                                mem[_1582 + 164] = mem[_1582]
                                s = 0
                                while s < mem[_1582]:
                                    mem[s + _1582 + 196] = mem[s + _1582 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1582] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1582] + _1582 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1582]) + _1582 + 196] = mem[floor32(mem[_1582]) + _1582 + -(mem[_1582] % 32) + 228 len mem[_1582] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1582]) + _1582 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1581 = mem[(32 * idx + 1) + 128]
                                _1650 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1650 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1650 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1650 + 68] = 0
                                mem[_1650 + 100] = address(_1581)
                                mem[_1650 + 132] = 128
                                mem[_1650 + 164] = mem[_1650]
                                s = 0
                                while s < mem[_1650]:
                                    mem[s + _1650 + 196] = mem[s + _1650 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1650] % 32:
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1581), 128, mem[_1650 + 164 len mem[_1650] + 32]
                                else:
                                    mem[floor32(mem[_1650]) + _1650 + 196] = mem[floor32(mem[_1650]) + _1650 + -(mem[_1650] % 32) + 228 len mem[_1650] % 32]
                                    require ext_code.size(address(_1342))
                                    call address(_1342).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1581), 128, mem[_1650], mem[_1650 + 196 len floor32(mem[_1650]) + 32]
                else:
                    _1345 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = address(_1345)
                    require ext_code.size(address(_1310))
                    staticcall address(_1310).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1345)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_1315) == address(_1310):
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                        if address(_1310) == address(_1315):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1585 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1585 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1585 + 36] = 0
                                mem[_1585 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1585 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1585 + 132] = 128
                                mem[_1585 + 164] = mem[_1585]
                                s = 0
                                while s < mem[_1585]:
                                    mem[s + _1585 + 196] = mem[s + _1585 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1585] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1585] + _1585 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1585]) + _1585 + 196] = mem[floor32(mem[_1585]) + _1585 + -(mem[_1585] % 32) + 228 len mem[_1585] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1585]) + _1585 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1584 = mem[(32 * idx + 1) + 128]
                                _1652 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1652 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1652 + 36] = 0
                                mem[_1652 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1652 + 100] = address(_1584)
                                mem[_1652 + 132] = 128
                                mem[_1652 + 164] = mem[_1652]
                                s = 0
                                while s < mem[_1652]:
                                    mem[s + _1652 + 196] = mem[s + _1652 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1652] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1584), 128, mem[_1652 + 164 len mem[_1652] + 32]
                                else:
                                    mem[floor32(mem[_1652]) + _1652 + 196] = mem[floor32(mem[_1652]) + _1652 + -(mem[_1652] % 32) + 228 len mem[_1652] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(_1584), 128, mem[_1652], mem[_1652 + 196 len floor32(mem[_1652]) + 32]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1588 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1588 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1588 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1588 + 68] = 0
                                mem[_1588 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1588 + 132] = 128
                                mem[_1588 + 164] = mem[_1588]
                                s = 0
                                while s < mem[_1588]:
                                    mem[s + _1588 + 196] = mem[s + _1588 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1588] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1588 + 164 len mem[_1588] + 32]
                                else:
                                    mem[floor32(mem[_1588]) + _1588 + 196] = mem[floor32(mem[_1588]) + _1588 + -(mem[_1588] % 32) + 228 len mem[_1588] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1588], mem[_1588 + 196 len floor32(mem[_1588]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1587 = mem[(32 * idx + 1) + 128]
                                _1654 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1654 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1654 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                                mem[_1654 + 68] = 0
                                mem[_1654 + 100] = address(_1587)
                                mem[_1654 + 132] = 128
                                mem[_1654 + 164] = mem[_1654]
                                s = 0
                                while s < mem[_1654]:
                                    mem[s + _1654 + 196] = mem[s + _1654 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1654] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1654] + _1654 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1654]) + _1654 + 196] = mem[floor32(mem[_1654]) + _1654 + -(mem[_1654] % 32) + 228 len mem[_1654] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1654]) + _1654 + -mem[64] + 224]
                    else:
                        require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                        if address(_1310) == address(_1315):
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1591 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1591 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1591 + 36] = 0
                                mem[_1591 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1591 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1591 + 132] = 128
                                mem[_1591 + 164] = mem[_1591]
                                s = 0
                                while s < mem[_1591]:
                                    mem[s + _1591 + 196] = mem[s + _1591 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1591] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1591] + _1591 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1591]) + _1591 + 196] = mem[floor32(mem[_1591]) + _1591 + -(mem[_1591] % 32) + 228 len mem[_1591] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1591]) + _1591 + -mem[64] + 224]
                            else:
                                require idx + 1 < mem[96]
                                _1590 = mem[(32 * idx + 1) + 128]
                                _1656 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1656 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1656 + 36] = 0
                                mem[_1656 + 68] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1656 + 100] = address(_1590)
                                mem[_1656 + 132] = 128
                                mem[_1656 + 164] = mem[_1656]
                                s = 0
                                while s < mem[_1656]:
                                    mem[s + _1656 + 196] = mem[s + _1656 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1656] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1656] + _1656 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1656]) + _1656 + 196] = mem[floor32(mem[_1656]) + _1656 + -(mem[_1656] % 32) + 228 len mem[_1656] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1656]) + _1656 + -mem[64] + 224]
                        else:
                            if idx >= mem[(32 * arg1.length) + 128] - 2:
                                _1594 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1594 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1594 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1594 + 68] = 0
                                mem[_1594 + 100] = 0x6bbcc8b410696f6717a6b24dd370866abc40b27f
                                mem[_1594 + 132] = 128
                                mem[_1594 + 164] = mem[_1594]
                                s = 0
                                while s < mem[_1594]:
                                    mem[s + _1594 + 196] = mem[s + _1594 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1594] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1594 + 164 len mem[_1594] + 32]
                                else:
                                    mem[floor32(mem[_1594]) + _1594 + 196] = mem[floor32(mem[_1594]) + _1594 + -(mem[_1594] % 32) + 228 len mem[_1594] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, 0x6bbcc8b410696f6717a6b24dd370866abc40b27f, 128, mem[_1594], mem[_1594 + 196 len floor32(mem[_1594]) + 32]
                            else:
                                require idx + 1 < mem[96]
                                _1593 = mem[(32 * idx + 1) + 128]
                                _1658 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1658 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1658 + 36] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                                mem[_1658 + 68] = 0
                                mem[_1658 + 100] = address(_1593)
                                mem[_1658 + 132] = 128
                                mem[_1658 + 164] = mem[_1658]
                                s = 0
                                while s < mem[_1658]:
                                    mem[s + _1658 + 196] = mem[s + _1658 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1658] % 32:
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1593), 128, mem[_1658 + 164 len mem[_1658] + 32]
                                else:
                                    mem[floor32(mem[_1658]) + _1658 + 196] = mem[floor32(mem[_1658]) + _1658 + -(mem[_1658] % 32) + 228 len mem[_1658] % 32]
                                    require ext_code.size(address(_1345))
                                    call address(_1345).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1593), 128, mem[_1658], mem[_1658 + 196 len floor32(mem[_1658]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
}



}
