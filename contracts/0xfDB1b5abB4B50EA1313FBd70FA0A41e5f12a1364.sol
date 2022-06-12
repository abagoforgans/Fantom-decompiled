contract main {




// =====================  Runtime code  =====================


#
#  - sub_043b710d(?)
#  - sub_954fe415(?)
#  - sub_b91c585b(?)
#  - sub_e0b3f88a(?)
#
function _fallback() payable {
    revert
}

function toFixed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if arg1 < 0xfffffffffffffff6c6d11716de2a2f8c500cdd19dbc6030cd280cbb9b6b8f070:
        revert with 0, arg1
    if arg1 > 0x9392ee8e921d5d073aff322e62439fcf32d7f344649470f90:
        revert with 0, arg1
    return (10^18 * arg1)
}



}
