contract main {




// =====================  Runtime code  =====================


#
#  - convertBurnToken(address arg1, address arg2)
#
const ori = 0x575f8738efda7f512e3654f277c77e80c7d2725

const sub_43c15124(?) = 0x62f4deb9895a95276b03e38abea8b0b315e8c3c1

const factory = 0x991152411a7b5a14a8cf0cdde8439435328070df

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const router = 0x53c153a0df7e050bbefbb70ee9632061f12795fb

const sub_fa9d5f8f(?) = 0xbc2451aad349b6b43fd05f4f0cc327f8a6bca2d4


array of struct stor1;

function _fallback() payable {
    revert
}

function sub_bd89001f(?) payable {
    require ext_code.size(0x575f8738efda7f512e3654f277c77e80c7d2725)
    staticcall 0x575f8738efda7f512e3654f277c77e80c7d2725.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe6e6f206f72696c6c69756d20746f206275726e2c20747279206275726e696e67206c70,
                    mem[200 len 28]
    require ext_code.size(0x575f8738efda7f512e3654f277c77e80c7d2725)
    staticcall 0x575f8738efda7f512e3654f277c77e80c7d2725.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x575f8738efda7f512e3654f277c77e80c7d2725)
    call 0x0575f8738efda7f512e3654f277c77e80c7d2725.burn(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9cbe987c(?) payable {
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'no ftm to convert, wait a bit.'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] / 5 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(0x991152411a7b5a14a8cf0cdde8439435328070df)
    staticcall 0x991152411a7b5a14a8cf0cdde8439435328070df.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x575f8738efda7f512e3654f277c77e80c7d2725
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
        if not ext_call.return_data[0] - (ext_call.return_data[0] / 5):
            require Mask(112, 0, ext_call.return_data[0])
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: addition overflow'
            require 1000 * Mask(112, 0, ext_call.return_data[0])
            mem[324] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0 / 1000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, 0
            else:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0 / 1000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, 0
        else:
            if (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) / ext_call.return_data[0] - (ext_call.return_data[0] / 5) != 996:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5):
                if not Mask(112, 0, ext_call.return_data[0]):
                    if (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5)
                    mem[324] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5), 0, address(this.address), 128, 0
                else:
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    mem[324] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0
            else:
                if (996 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (996 * ext_call.return_data[0] / 5 * Mask(112, 0, ext_call.return_data[32])) / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not Mask(112, 0, ext_call.return_data[0]):
                    if (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5)
                    mem[324] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (996 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (996 * ext_call.return_data[0] / 5 * Mask(112, 0, ext_call.return_data[32])) / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args (996 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (996 * ext_call.return_data[0] / 5 * Mask(112, 0, ext_call.return_data[32])) / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5), 0, address(this.address), 128, 0
                else:
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    mem[324] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (996 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (996 * ext_call.return_data[0] / 5 * Mask(112, 0, ext_call.return_data[32])) / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args (996 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (996 * ext_call.return_data[0] / 5 * Mask(112, 0, ext_call.return_data[32])) / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0
    else:
        if not ext_call.return_data[0] - (ext_call.return_data[0] / 5):
            require Mask(112, 0, ext_call.return_data[32])
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: addition overflow'
            require 1000 * Mask(112, 0, ext_call.return_data[32])
            mem[324] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, 0
            else:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, 0
        else:
            if (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) / ext_call.return_data[0] - (ext_call.return_data[0] / 5) != 996:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5):
                if not Mask(112, 0, ext_call.return_data[32]):
                    if (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5)
                    mem[324] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5), 0, address(this.address), 128, 0
                else:
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    mem[324] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0
            else:
                if (996 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (996 * ext_call.return_data[0] / 5 * Mask(112, 0, ext_call.return_data[0])) / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not Mask(112, 0, ext_call.return_data[32]):
                    if (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5)
                    mem[324] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (996 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (996 * ext_call.return_data[0] / 5 * Mask(112, 0, ext_call.return_data[0])) / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args (996 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (996 * ext_call.return_data[0] / 5 * Mask(112, 0, ext_call.return_data[0])) / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5), 0, address(this.address), 128, 0
                else:
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    mem[324] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (996 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (996 * ext_call.return_data[0] / 5 * Mask(112, 0, ext_call.return_data[0])) / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args (996 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (996 * ext_call.return_data[0] / 5 * Mask(112, 0, ext_call.return_data[0])) / (996 * ext_call.return_data[0]) - (996 * ext_call.return_data[0] / 5) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x575f8738efda7f512e3654f277c77e80c7d2725)
    staticcall 0x575f8738efda7f512e3654f277c77e80c7d2725.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x575f8738efda7f512e3654f277c77e80c7d2725)
    call 0x0575f8738efda7f512e3654f277c77e80c7d2725.burn(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[292] = 0xbc2451aad349b6b43fd05f4f0cc327f8a6bca2d4
    require ext_code.size(0x991152411a7b5a14a8cf0cdde8439435328070df)
    staticcall 0x991152411a7b5a14a8cf0cdde8439435328070df.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0xbc2451aad349b6b43fd05f4f0cc327f8a6bca2d4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        mem[256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[288] = 0xbc2451aad349b6b43fd05f4f0cc327f8a6bca2d4
        stor1.length = 2
        s = 0
        idx = 256
        while 320 > idx:
            stor1[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0x53c153a0df7e050bbefbb70ee9632061f12795fb, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp + 600 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if not stor1.length:
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] / 5, 10, 160, 0, 0x62f4deb9895a95276b03e38abea8b0b315e8c3c1, block.timestamp + 600, stor1.length
        else:
            mem[516] = address(stor1.field_0)
            idx = 516
            s = 0
            while (32 * stor1.length) + 516 > idx + 32:
                mem[idx + 32] = stor1[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
            call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] / 5, 10, 160, 0, 0x62f4deb9895a95276b03e38abea8b0b315e8c3c1, block.timestamp + 600, stor1.length, mem[516 len 32 * stor1.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
