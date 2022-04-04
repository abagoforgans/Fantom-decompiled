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
    mem[64] = (32 * _11) + ceil32(return_data.size) + 128
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



}
