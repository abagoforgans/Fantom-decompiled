contract main {




// =====================  Runtime code  =====================


#
#  - sub_3ed7d992(?)
#
address stor0;

function _fallback() payable {
    revert
}

function sub_31a08f30(?) payable {
    require calldata.size - 4 >= 160
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require 0 < ('cd', 100).length
    if address(('cd', 100)[0]) != stor0:
        revert with 0, 'PATH_A: Must Start with WFTM'
    require ('cd', 132).length - 1 < ('cd', 132).length
    if address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]) != stor0:
        revert with 0, 'PATH_B: Must End with WFTM'
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[68]
    mem[132] = 64
    mem[164] = ('cd', 100).length
    mem[196 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    mem[(32 * ('cd', 100).length) + 196] = 0
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[68], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len floor32(('cd', 100).length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], Mask(224, 32, cd[68]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
    _11 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_8 + 96])] = mem[_8 + 128 len floor32(mem[_8 + 96])]
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    _34 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
    mem[(32 * _11) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _11) + ceil32(return_data.size) + 132] = _34
    mem[(32 * _11) + ceil32(return_data.size) + 164] = 64
    mem[(32 * _11) + ceil32(return_data.size) + 196] = ('cd', 132).length
    mem[(32 * _11) + ceil32(return_data.size) + 228 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
    mem[(32 * _11) + ceil32(return_data.size) + (32 * ('cd', 132).length) + 228] = 0
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _34, Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len floor32(('cd', 132).length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _11) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _11) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _38 = mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _34) >> 32
    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _34) >> 32 <= 4294967296
    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _34) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _34) >> 32 + (32 * _11) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _34) >> 32 + (32 * mem[mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _34) >> 32 + (32 * _11) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
    mem[(32 * _11) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _34) >> 32 + (32 * _11) + ceil32(return_data.size) + 128]
    _41 = mem[_38 + (32 * _11) + ceil32(return_data.size) + 128]
    mem[(32 * _11) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_38 + (32 * _11) + ceil32(return_data.size) + 128])] = mem[_38 + (32 * _11) + ceil32(return_data.size) + 160 len floor32(mem[_38 + (32 * _11) + ceil32(return_data.size) + 128])]
    mem[64] = (32 * _41) + (32 * _11) + (2 * ceil32(return_data.size)) + 160
    require mem[(32 * _11) + (2 * ceil32(return_data.size)) + 128] - 1 < mem[(32 * _11) + (2 * ceil32(return_data.size)) + 128]
    if mem[(32 * mem[(32 * _11) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _11) + (2 * ceil32(return_data.size)) + 160] < cd[68]:
        return 0
    mem[(32 * _41) + (32 * _11) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * mem[(32 * _11) + (2 * ceil32(return_data.size)) + 128] - 1) + (32 * _11) + (2 * ceil32(return_data.size)) + 160] - cd[68]
    return memory
      from (32 * _41) + (32 * _11) + (2 * ceil32(return_data.size)) + 160
       len 32
}

function sub_43add587(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = 64
    mem[164] = arg3.length
    mem[196 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 196] = 0
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    _263 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
    mem[(32 * _7) + ceil32(return_data.size) + 164] = msg.sender
    mem[(32 * _7) + ceil32(return_data.size) + 196] = this.address
    mem[(32 * _7) + ceil32(return_data.size) + 228] = arg2
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 100
    mem[(32 * _7) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(32 * _7) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
    mem[(32 * _7) + ceil32(return_data.size) + 260 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[(32 * _7) + ceil32(return_data.size) + 384 len 4] = uint32(arg2)
    call stor0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[(32 * _7) + ceil32(return_data.size) + 356 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[(32 * _7) + ceil32(return_data.size) + 364 len 20],
                        uint32(arg2),
                        mem[(32 * _7) + ceil32(return_data.size) + 388 len 4]
        if not mem[96 len 4], Mask(224, 32, arg2) >> 32:
            mem[(32 * _7) + ceil32(return_data.size) + 296] = arg1
            mem[(32 * _7) + ceil32(return_data.size) + 328] = arg2
            mem[(32 * _7) + ceil32(return_data.size) + 260] = 68
            mem[(32 * _7) + ceil32(return_data.size) + 292 len 4] = approve(address rg1, uint256 rg2)
        else:
            require mem[96 len 4], Mask(224, 32, arg2) >> 32 >= 32
            if not uint32(arg2), 0:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(32 * _7) + ceil32(return_data.size) + 364 len 20],
                            uint32(arg2),
                            mem[(32 * _7) + ceil32(return_data.size) + 388 len 4]
            mem[(32 * _7) + ceil32(return_data.size) + 296] = arg1
            mem[(32 * _7) + ceil32(return_data.size) + 328] = arg2
        mem[(32 * _7) + ceil32(return_data.size) + 360 len 64] = 0, address(arg1), Mask(224, 32, arg2) >> 32
        mem[(32 * _7) + ceil32(return_data.size) + 452 len 4] = uint32(arg2)
        call stor0 with:
             gas gas_remaining wei
            args arg2, Mask(224, 32, address(arg1), Mask(224, 32, arg2) >> 32) >> 32, mem[(32 * _7) + ceil32(return_data.size) + 424 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
            if mem[96 len 4], Mask(224, 32, arg2) >> 32:
                require mem[96 len 4], Mask(224, 32, arg2) >> 32 >= 32
                if not uint32(arg2), 0:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
            mem[(32 * _7) + ceil32(return_data.size) + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _7) + ceil32(return_data.size) + 364] = arg2
            mem[(32 * _7) + ceil32(return_data.size) + 396] = _263
            mem[(32 * _7) + ceil32(return_data.size) + 460] = msg.sender
            mem[(32 * _7) + ceil32(return_data.size) + 492] = block.timestamp
            mem[(32 * _7) + ceil32(return_data.size) + 428] = 160
            mem[(32 * _7) + ceil32(return_data.size) + 524] = arg3.length
            mem[(32 * _7) + ceil32(return_data.size) + 556 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            mem[(32 * _7) + ceil32(return_data.size) + (32 * arg3.length) + 556] = 0
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg2, _263, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)]), msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _7) + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _7) + (2 * ceil32(return_data.size)) + 360
            require return_data.size >= 32
            require mem[(32 * _7) + ceil32(return_data.size) + 360 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * _7) + ceil32(return_data.size) + 360 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _7) + ceil32(return_data.size) + 360 len 4], Mask(224, 32, arg2) >> 32 + (32 * _7) + ceil32(return_data.size) + 360] <= 4294967296 and mem[(32 * _7) + ceil32(return_data.size) + 360 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _7) + ceil32(return_data.size) + 360 len 4], Mask(224, 32, arg2) >> 32 + (32 * _7) + ceil32(return_data.size) + 360]) + 32 <= return_data.size
        else:
            mem[(32 * _7) + ceil32(return_data.size) + 360] = return_data.size
            mem[(32 * _7) + ceil32(return_data.size) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _7) + ceil32(return_data.size) + 392]:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 365] = arg2
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 397] = _263
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 461] = msg.sender
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = block.timestamp
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 429] = 160
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = arg3.length
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * arg3.length) + 557] = 0
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg2, _263, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)]), msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _7) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            require mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361] <= 4294967296 and mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32 <= return_data.size
    else:
        mem[(32 * _7) + ceil32(return_data.size) + 260] = return_data.size
        mem[(32 * _7) + ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 365 len 28]
        if not return_data.size:
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = arg1
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = arg2
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 261] = 68
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 293 len 4] = approve(address rg1, uint256 rg2)
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 64] = 0, address(arg1), Mask(224, 32, arg2) >> 32
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4] = uint32(arg2)
            call stor0 with:
                 gas gas_remaining wei
                args arg2, Mask(224, 32, address(arg1), Mask(224, 32, arg2) >> 32) >> 32, mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if mem[96 len 4], Mask(224, 32, arg2) >> 32:
                    require mem[96 len 4], Mask(224, 32, arg2) >> 32 >= 32
                    if not uint32(arg2), 0:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 365] = arg2
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 397] = _263
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 461] = msg.sender
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = block.timestamp
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 429] = 160
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = arg3.length
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * arg3.length) + 557] = 0
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, _263, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _7) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361
                require return_data.size >= 32
                require mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361] <= 4294967296 and mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            else:
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = return_data.size
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 393]:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 366] = arg2
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 398] = _263
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 462] = msg.sender
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 494] = block.timestamp
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 430] = 160
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 526] = arg3.length
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 558 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + (32 * arg3.length) + 558] = 0
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, _263, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _7) + (4 * ceil32(return_data.size)) + 362
                require return_data.size >= 32
                require mem[(32 * _7) + (4 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _7) + (4 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _7) + (4 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 + (32 * _7) + (4 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[(32 * _7) + (4 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _7) + (4 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 + (32 * _7) + (4 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
        else:
            require return_data.size >= 32
            if not mem[(32 * _7) + ceil32(return_data.size) + 292]:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 365 len 28]
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = arg1
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = arg2
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 64] = 0, address(arg1), Mask(224, 32, arg2) >> 32
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4] = uint32(arg2)
            call stor0 with:
                 gas gas_remaining wei
                args arg2, Mask(224, 32, address(arg1), Mask(224, 32, arg2) >> 32) >> 32, mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if mem[96 len 4], Mask(224, 32, arg2) >> 32:
                    require mem[96 len 4], Mask(224, 32, arg2) >> 32 >= 32
                    if not uint32(arg2), 0:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 365] = arg2
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 397] = _263
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 461] = msg.sender
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 493] = block.timestamp
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 429] = 160
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = arg3.length
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * arg3.length) + 557] = 0
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, _263, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _7) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361
                require return_data.size >= 32
                require mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361] <= 4294967296 and mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg2) >> 32 + (32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            else:
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = return_data.size
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 393]:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 366] = arg2
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 398] = _263
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 462] = msg.sender
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 494] = block.timestamp
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 430] = 160
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 526] = arg3.length
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 558 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + (32 * arg3.length) + 558] = 0
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, _263, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _7) + (4 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _7) + (6 * ceil32(return_data.size)) + 362
                require return_data.size >= 32
                require mem[(32 * _7) + (4 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _7) + (4 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _7) + (4 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 + (32 * _7) + (4 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[(32 * _7) + (4 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _7) + (4 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg2) >> 32 + (32 * _7) + (4 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
}



}
