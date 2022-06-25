contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(msg.sender)

const getUSDC = ext_call.return_data[0]

const getDAI = ext_call.return_data[0]


function _fallback() payable {
    revert
}

function sub_f12532ad(?) payable {
    mem[160] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = 1
    mem[260] = msg.sender
    mem[292] = block.timestamp + 3000
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 1, Array(len=2, data=mem[356 len 64]), msg.sender, block.timestamp + 3000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], 0 <= 4294967296
    require mem[192 len 4], 0 + 32 <= return_data.size
    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
}

function sub_6a44b170(?) {
    require calldata.size - 4 >= 32
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 1
    mem[292] = this.address
    mem[324] = block.timestamp + 3000
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 3000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
}



}
