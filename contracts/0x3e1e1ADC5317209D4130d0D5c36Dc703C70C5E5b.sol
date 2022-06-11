contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_203d8de5(?) payable {
    require calldata.size - 4 >= 128
    require arg3 == address(arg3)
    require arg4 == uint32(arg4)
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if uint32(arg4) == ext_call.return_data[92 len 4]:
        require ext_code.size(address(arg3))
        call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args arg1, arg2, stor0, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_10ab1a38(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if Mask(144, 112, ext_call.return_data[0]) and arg3 > -1 / Mask(144, 112, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3) and Mask(112, 0, ext_call.return_data[32]) > -1 / (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a:
        revert with 'NH{q', 17
    if Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) > !((ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3)):
        revert with 'NH{q', 17
    if not Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3):
        revert with 'NH{q', 18
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, (ext_call.return_data[0] * arg3 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg3 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3), stor0, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1977c6c6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and arg3 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3) and Mask(112, 0, ext_call.return_data[0]) > -1 / (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a:
        revert with 'NH{q', 17
    if Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) > !((ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3)):
        revert with 'NH{q', 17
    if not Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3):
        revert with 'NH{q', 18
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] * arg3 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg3 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3), 0, stor0, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_423a148c(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if Mask(144, 112, ext_call.return_data[0]) and arg3 > -1 / Mask(144, 112, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3) and Mask(112, 0, ext_call.return_data[32]) > -1 / (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a:
        revert with 'NH{q', 17
    if Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) > !((ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3)):
        revert with 'NH{q', 17
    if not Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3):
        revert with 'NH{q', 18
    if (ext_call.return_data[0] * arg3 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg3 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3) < 1:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, ((ext_call.return_data[0] * arg3 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg3 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3)) - 1, address(arg2), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg6))
    staticcall address(arg6).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if Mask(144, 112, ext_call.return_data[0]) and arg4 > -1 / Mask(144, 112, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4) and Mask(112, 0, ext_call.return_data[32]) > -1 / (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a:
        revert with 'NH{q', 17
    if Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) > !((ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4)):
        revert with 'NH{q', 17
    if not Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4):
        revert with 'NH{q', 18
    require ext_code.size(address(arg2))
    call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg4 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4), stor0, 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ((ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg4 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4))
}

function sub_28a57e78(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if Mask(144, 112, ext_call.return_data[0]) and arg3 > -1 / Mask(144, 112, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3) and Mask(112, 0, ext_call.return_data[32]) > -1 / (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a:
        revert with 'NH{q', 17
    if Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) > !((ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3)):
        revert with 'NH{q', 17
    if not Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3):
        revert with 'NH{q', 18
    if (ext_call.return_data[0] * arg3 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg3 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3) < 1:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, ((ext_call.return_data[0] * arg3 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg3 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[0]) * arg3)) - 1, address(arg2), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg6))
    staticcall address(arg6).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4) and Mask(112, 0, ext_call.return_data[0]) > -1 / (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a:
        revert with 'NH{q', 17
    if Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) > !((ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4)):
        revert with 'NH{q', 17
    if not Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
        revert with 'NH{q', 18
    require ext_code.size(address(arg2))
    call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4), stor0, 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ((ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4))
}

function sub_6b682e77(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and arg3 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3) and Mask(112, 0, ext_call.return_data[0]) > -1 / (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a:
        revert with 'NH{q', 17
    if Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) > !((ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3)):
        revert with 'NH{q', 17
    if not Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3):
        revert with 'NH{q', 18
    if (ext_call.return_data[0] * arg3 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg3 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3) < 1:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, ((ext_call.return_data[0] * arg3 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg3 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3)) - 1, address(arg2), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg6))
    staticcall address(arg6).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if Mask(144, 112, ext_call.return_data[0]) and arg4 > -1 / Mask(144, 112, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4) and Mask(112, 0, ext_call.return_data[32]) > -1 / (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[0]) > 0x68db8bac710cb295e9e1b089a:
        revert with 'NH{q', 17
    if Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) > !((ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4)):
        revert with 'NH{q', 17
    if not Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4):
        revert with 'NH{q', 18
    require ext_code.size(address(arg2))
    call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg4 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4), stor0, 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ((ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg4 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[0]) * arg4))
}

function sub_61f5e316(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and arg3 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3) and Mask(112, 0, ext_call.return_data[0]) > -1 / (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a:
        revert with 'NH{q', 17
    if Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) > !((ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3)):
        revert with 'NH{q', 17
    if not Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3):
        revert with 'NH{q', 18
    if (ext_call.return_data[0] * arg3 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg3 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3) < 1:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, ((ext_call.return_data[0] * arg3 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg3 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg3) - (Mask(112, 0, ext_call.return_data[32]) * arg3)) - 1, address(arg2), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg6))
    staticcall address(arg6).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and arg4 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4) and Mask(112, 0, ext_call.return_data[0]) > -1 / (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) > 0x68db8bac710cb295e9e1b089a:
        revert with 'NH{q', 17
    if Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) > !((ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4)):
        revert with 'NH{q', 17
    if not Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4):
        revert with 'NH{q', 18
    require ext_code.size(address(arg2))
    call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, (ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4), stor0, 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ((ext_call.return_data[0] * arg4 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg4 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * arg4) - (Mask(112, 0, ext_call.return_data[32]) * arg4))
}



}
