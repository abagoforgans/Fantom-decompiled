contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f18b5c4a(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == cd[164]
    if owner != msg.sender:
        revert with 0, 'not owner'
    mem[128] = 128
    mem[256] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 288
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[160] = (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 68).length) + 288] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 68).length) + 320
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[192] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[224] = cd[164]
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 352] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 356] = this.address
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 388] = cd[36]
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 420] = 96
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 452] = mem[96]
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + mem[96] + 484] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args address(this.address), cd[36], Array(len=mem[96], data=mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 484 len ceil32(mem[96])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Invalid balance, was the flashLoan successful?'
    require arg5.length >= 128
    require cd[(arg5 + 36)] <= test266151307()
    require arg5 + cd[(arg5 + 36)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 36)] + 36)] <= test266151307()
    require ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128 <= test266151307() and (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128 >= 96
    mem[ceil32(return_data.size) + 96] = cd[(arg5 + cd[(arg5 + 36)] + 36)]
    require cd[(arg5 + 36)] + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 36)] + 68
    t = ceil32(return_data.size) + 128
    while idx < cd[(arg5 + cd[(arg5 + 36)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg5 + 68)] <= test266151307()
    require arg5 + cd[(arg5 + 68)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 68)] + 36)] <= test266151307()
    require ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160 <= test266151307() and (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160 >= 128
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128] = cd[(arg5 + cd[(arg5 + 68)] + 36)]
    require cd[(arg5 + 68)] + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 68)] + 68
    t = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160
    while idx < cd[(arg5 + cd[(arg5 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg5 + 100)] <= test266151307()
    require arg5 + cd[(arg5 + 100)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 100)] + 36)] <= test266151307()
    require ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 <= test266151307() and (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 >= 160
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160] = cd[(arg5 + cd[(arg5 + 100)] + 36)]
    require cd[(arg5 + 100)] + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 100)] + 68
    t = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192
    while idx < cd[(arg5 + cd[(arg5 + 100)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg5 + 132)] == cd[(arg5 + 132)]
    require 0 < cd[(arg5 + cd[(arg5 + 36)] + 36)]
    require 0 < cd[(arg5 + cd[(arg5 + 100)] + 36)]
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 196] = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 204 len 20]
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 228] = 0
    require ext_code.size(mem[ceil32(return_data.size) + 140 len 20])
    call mem[ceil32(return_data.size) + 140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 196], 0
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'no success on approving :('
    require 0 < cd[(arg5 + cd[(arg5 + 36)] + 36)]
    require 0 < cd[(arg5 + cd[(arg5 + 100)] + 36)]
    mem[(2 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 196] = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 204 len 20]
    mem[(2 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 228] = arg3
    require ext_code.size(mem[ceil32(return_data.size) + 140 len 20])
    call mem[ceil32(return_data.size) + 140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 196], arg3
    mem[(2 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'no success on approving :('
    require 0 < cd[(arg5 + cd[(arg5 + 100)] + 36)]
    _167 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]
    mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 196] = arg3
    mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 228] = cd[(arg5 + 132)]
    mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 260] = 160
    mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 356] = cd[(arg5 + cd[(arg5 + 36)] + 36)]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 388
    while idx < cd[(arg5 + cd[(arg5 + 36)] + 36)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 292] = this.address
    mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 324] = block.timestamp + 900
    require ext_code.size(address(_167))
    call address(_167).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, cd[(arg5 + 132)], Array(len=cd[(arg5 + cd[(arg5 + 36)] + 36)], data=mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 388 len 32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]]), address(this.address), block.timestamp + 900
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192
    require return_data.size >= 32
    _210 = mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + return_data.size + 192
    _211 = mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
    require (6 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
    mem[64] = (6 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
    mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192] = _211
    require _210 + (32 * _211) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + _210 + 224
    t = (6 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 224
    while idx < _211:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 1 < mem[ceil32(return_data.size) + 96]
    _257 = mem[ceil32(return_data.size) + 160]
    require 1 < mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
    mem[mem[64] + 4] = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 236 len 20]
    mem[mem[64] + 36] = 0
    require ext_code.size(address(_257))
    call address(_257).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _262 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_262] == bool(mem[_262])
    if not mem[_262]:
        revert with 0, 'no success on approving :('
    require 1 < mem[ceil32(return_data.size) + 96]
    _266 = mem[ceil32(return_data.size) + 160]
    require 1 < mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
    require 1 < _211
    _270 = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 256]
    mem[mem[64] + 4] = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 236 len 20]
    mem[mem[64] + 36] = _270
    require ext_code.size(address(_266))
    call address(_266).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], _270
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _274 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_274] == bool(mem[_274])
    if not mem[_274]:
        revert with 0, 'no success on approving :('
    require 1 < mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
    _278 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 224]
    require 1 < _211
    _280 = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 256]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _280
    mem[mem[64] + 36] = arg3 - 10000
    mem[mem[64] + 68] = 160
    _283 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
    idx = 0
    s = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160
    t = mem[64] + 196
    while idx < _283:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 900
    require ext_code.size(address(_278))
    call address(_278).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _280, arg3 - 10000, 160, address(this.address), block.timestamp + 900, mem[mem[64] + 164 len (32 * _283) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _299 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _300 = mem[_299]
    require mem[_299] <= test266151307()
    require _299 + mem[_299] + 31 < _299 + return_data.size
    _301 = mem[_299 + mem[_299]]
    require mem[_299 + mem[_299]] <= test266151307()
    require _299 + ceil32(return_data.size) + (32 * mem[_299 + mem[_299]]) + 32 <= test266151307() and (32 * mem[_299 + mem[_299]]) + 32 >= 0
    mem[64] = _299 + ceil32(return_data.size) + (32 * mem[_299 + mem[_299]]) + 32
    mem[_299 + ceil32(return_data.size)] = _301
    require _300 + (32 * _301) + 32 <= return_data.size
    idx = 0
    s = _299 + _300 + 32
    t = _299 + ceil32(return_data.size) + 32
    while idx < _301:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg3 + arg4
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg3 + arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _313 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_313] == bool(mem[_313])
    if not mem[_313]:
        revert with 0, 'Transfer fund back failed'
}



}
