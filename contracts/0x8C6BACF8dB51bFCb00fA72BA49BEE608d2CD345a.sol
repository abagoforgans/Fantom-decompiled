contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function disperseToken(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg3.length:
            revert with 0, 50
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(arg1)
        call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7] == bool(mem[_7])
        require mem[_7]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
