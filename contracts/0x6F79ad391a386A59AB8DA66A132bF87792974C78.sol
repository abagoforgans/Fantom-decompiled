contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized.'
    stor0 = arg1
}

function withdrawEth() {
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized.'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawErc20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized.'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8788d082(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require ('cd', 4).length >= 320
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] == address(('cd', 4)[3])
    require ('cd', 4)[4] == address(('cd', 4)[4])
    require ('cd', 4)[5] == address(('cd', 4)[5])
    mem[260 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 260] = 0
    require ext_code.size(address(('cd', 4)[3]))
    if address(('cd', 4)[0]) >= address(('cd', 4)[1]):
        call address(('cd', 4)[3]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(('cd', 4)[7]), 0, address(this.address), 128, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 260 len ceil32(('cd', 4).length) - ('cd', 4).length]
    else:
        call address(('cd', 4)[3]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0, ('cd', 4)[7], address(this.address), 128, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 260 len ceil32(('cd', 4).length) - ('cd', 4).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 320
    require mem[128] == mem[140 len 20]
    require mem[160] == mem[172 len 20]
    require mem[192] == mem[204 len 20]
    require mem[224] == mem[236 len 20]
    require mem[256] == mem[268 len 20]
    require mem[288] == mem[300 len 20]
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[256]), mem[352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    require ext_code.size(mem[268 len 20])
    if mem[268 len 20] == mem[300 len 20]:
        if mem[172 len 20] >= mem[140 len 20]:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[384], 0, address(this.address), 128, 0, None
        else:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(this.address), 128, 0
    else:
        if mem[172 len 20] >= mem[204 len 20]:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[384], 0, address(mem[288]), 128, 0, None
        else:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(mem[288]), 128, 0, None
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[300 len 20])
        if mem[204 len 20] >= mem[140 len 20]:
            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[416], 0, address(this.address), 128, 0, 0
        else:
            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[416], address(this.address), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, mem[320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 320
    require mem[128] == mem[140 len 20]
    require mem[160] == mem[172 len 20]
    require mem[192] == mem[204 len 20]
    require mem[224] == mem[236 len 20]
    require mem[256] == mem[268 len 20]
    require mem[288] == mem[300 len 20]
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[256]), mem[352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    require ext_code.size(mem[268 len 20])
    if mem[268 len 20] == mem[300 len 20]:
        if mem[172 len 20] >= mem[140 len 20]:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[384], 0, address(this.address), 128, 0, None
        else:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(this.address), 128, 0
    else:
        if mem[172 len 20] >= mem[204 len 20]:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[384], 0, address(mem[288]), 128, 0, None
        else:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(mem[288]), 128, 0, None
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[300 len 20])
        if mem[204 len 20] >= mem[140 len 20]:
            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[416], 0, address(this.address), 128, 0, 0
        else:
            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[416], address(this.address), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, mem[320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 320
    require mem[128] == mem[140 len 20]
    require mem[160] == mem[172 len 20]
    require mem[192] == mem[204 len 20]
    require mem[224] == mem[236 len 20]
    require mem[256] == mem[268 len 20]
    require mem[288] == mem[300 len 20]
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[256]), mem[352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    require ext_code.size(mem[268 len 20])
    if mem[268 len 20] == mem[300 len 20]:
        if mem[172 len 20] >= mem[140 len 20]:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[384], 0, address(this.address), 128, 0, None
        else:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(this.address), 128, 0
    else:
        if mem[172 len 20] >= mem[204 len 20]:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[384], 0, address(mem[288]), 128, 0, None
        else:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(mem[288]), 128, 0, None
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[300 len 20])
        if mem[204 len 20] >= mem[140 len 20]:
            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[416], 0, address(this.address), 128, 0, 0
        else:
            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[416], address(this.address), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, mem[320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
