contract main {




// =====================  Runtime code  =====================


#
#  - sub_9cbe987c(?)
#  - convertBurnToken(address arg1, address arg2)
#
const ori = 0x575f8738efda7f512e3654f277c77e80c7d2725

const sub_43c15124(?) = 0x62f4deb9895a95276b03e38abea8b0b315e8c3c1

const factory = 0x991152411a7b5a14a8cf0cdde8439435328070df

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const router = 0x53c153a0df7e050bbefbb70ee9632061f12795fb

const sub_fa9d5f8f(?) = 0xbc2451aad349b6b43fd05f4f0cc327f8a6bca2d4


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



}
