contract main {




// =====================  Runtime code  =====================


address stor0;

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

function sub_78b94ae6(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg2.length >= 320
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    require mem[160] == mem[172 len 20]
    require mem[192] == mem[204 len 20]
    require mem[224] == mem[236 len 20]
    require mem[256] == mem[268 len 20]
    _8 = mem[288]
    require mem[288] == mem[300 len 20]
    _9 = mem[320]
    _11 = mem[384]
    _12 = mem[416]
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[256]), mem[352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if mem[268 len 20] == mem[300 len 20]:
        require ext_code.size(mem[268 len 20])
        if mem[172 len 20] >= mem[140 len 20]:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[384], 0, address(this.address), 128, 0, None
        else:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, mem[320]
    else:
        if mem[172 len 20] < mem[204 len 20]:
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(mem[288]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[300 len 20])
            if mem[204 len 20] >= mem[140 len 20]:
                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args mem[416], 0, address(this.address), 128, 0, 0, None
            else:
                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, mem[416], address(this.address), 128, 0, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, mem[320]
        else:
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _11, 0, address(mem[288]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if mem[204 len 20] >= mem[140 len 20]:
                mem[ceil32(arg2.length) + ceil32(return_data.size) + 196] = _12
                mem[ceil32(arg2.length) + ceil32(return_data.size) + 228] = 0
                mem[ceil32(arg2.length) + ceil32(return_data.size) + 260] = this.address
                mem[ceil32(arg2.length) + ceil32(return_data.size) + 292] = 128
                mem[ceil32(arg2.length) + ceil32(return_data.size) + 324] = 0, Mask(224, 32, _11) >> 32
                mem[ceil32(arg2.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 192 len ceil32(0, Mask(224, 32, _11) >> 32)]
                if ceil32(0, Mask(224, 32, _11) >> 32) <= 0, Mask(224, 32, _11) >> 32:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _12, 0, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg2.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
                else:
                    mem[ceil32(arg2.length) + ceil32(return_data.size) + 0, Mask(224, 32, _11) >> 32 + 356] = 0
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _12, 0, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg2.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_3))
                    call address(_3).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
            else:
                mem[ceil32(arg2.length) + ceil32(return_data.size) + 196] = 0
                mem[ceil32(arg2.length) + ceil32(return_data.size) + 228] = _12
                mem[ceil32(arg2.length) + ceil32(return_data.size) + 260] = this.address
                mem[ceil32(arg2.length) + ceil32(return_data.size) + 292] = 128
                mem[ceil32(arg2.length) + ceil32(return_data.size) + 324] = 0, Mask(224, 32, _11) >> 32
                mem[ceil32(arg2.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 192 len ceil32(0, Mask(224, 32, _11) >> 32)]
                if ceil32(0, Mask(224, 32, _11) >> 32) <= 0, Mask(224, 32, _11) >> 32:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _12, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg2.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
                else:
                    mem[ceil32(arg2.length) + ceil32(return_data.size) + 0, Mask(224, 32, _11) >> 32 + 356] = 0
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _12, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg2.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_3))
                    call address(_3).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function apeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 320
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    require mem[160] == mem[172 len 20]
    require mem[192] == mem[204 len 20]
    require mem[224] == mem[236 len 20]
    require mem[256] == mem[268 len 20]
    _8 = mem[288]
    require mem[288] == mem[300 len 20]
    _9 = mem[320]
    _11 = mem[384]
    _12 = mem[416]
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[256]), mem[352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if mem[268 len 20] == mem[300 len 20]:
        require ext_code.size(mem[268 len 20])
        if mem[172 len 20] >= mem[140 len 20]:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[384], 0, address(this.address), 128, 0, None
        else:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, mem[320]
    else:
        if mem[172 len 20] < mem[204 len 20]:
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(mem[288]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[300 len 20])
            if mem[204 len 20] >= mem[140 len 20]:
                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args mem[416], 0, address(this.address), 128, 0, 0, None
            else:
                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, mem[416], address(this.address), 128, 0, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, mem[320]
        else:
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _11, 0, address(mem[288]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if mem[204 len 20] >= mem[140 len 20]:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 196] = _12
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 228] = 0
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 260] = this.address
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, Mask(224, 32, _11) >> 32
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 192 len ceil32(0, Mask(224, 32, _11) >> 32)]
                if ceil32(0, Mask(224, 32, _11) >> 32) <= 0, Mask(224, 32, _11) >> 32:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _12, 0, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
                else:
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 0, Mask(224, 32, _11) >> 32 + 356] = 0
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _12, 0, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_3))
                    call address(_3).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
            else:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 196] = 0
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 228] = _12
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 260] = this.address
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, Mask(224, 32, _11) >> 32
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 192 len ceil32(0, Mask(224, 32, _11) >> 32)]
                if ceil32(0, Mask(224, 32, _11) >> 32) <= 0, Mask(224, 32, _11) >> 32:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _12, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
                else:
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 0, Mask(224, 32, _11) >> 32 + 356] = 0
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _12, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_3))
                    call address(_3).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function jetswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 320
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    require mem[160] == mem[172 len 20]
    require mem[192] == mem[204 len 20]
    require mem[224] == mem[236 len 20]
    require mem[256] == mem[268 len 20]
    _8 = mem[288]
    require mem[288] == mem[300 len 20]
    _9 = mem[320]
    _11 = mem[384]
    _12 = mem[416]
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[256]), mem[352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if mem[268 len 20] == mem[300 len 20]:
        require ext_code.size(mem[268 len 20])
        if mem[172 len 20] >= mem[140 len 20]:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[384], 0, address(this.address), 128, 0, None
        else:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, mem[320]
    else:
        if mem[172 len 20] < mem[204 len 20]:
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(mem[288]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[300 len 20])
            if mem[204 len 20] >= mem[140 len 20]:
                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args mem[416], 0, address(this.address), 128, 0, 0, None
            else:
                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, mem[416], address(this.address), 128, 0, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, mem[320]
        else:
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _11, 0, address(mem[288]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if mem[204 len 20] >= mem[140 len 20]:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 196] = _12
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 228] = 0
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 260] = this.address
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, Mask(224, 32, _11) >> 32
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 192 len ceil32(0, Mask(224, 32, _11) >> 32)]
                if ceil32(0, Mask(224, 32, _11) >> 32) <= 0, Mask(224, 32, _11) >> 32:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _12, 0, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
                else:
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 0, Mask(224, 32, _11) >> 32 + 356] = 0
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _12, 0, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_3))
                    call address(_3).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
            else:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 196] = 0
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 228] = _12
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 260] = this.address
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, Mask(224, 32, _11) >> 32
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 192 len ceil32(0, Mask(224, 32, _11) >> 32)]
                if ceil32(0, Mask(224, 32, _11) >> 32) <= 0, Mask(224, 32, _11) >> 32:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _12, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
                else:
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 0, Mask(224, 32, _11) >> 32 + 356] = 0
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _12, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_3))
                    call address(_3).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    require mem[160] == mem[172 len 20]
    require mem[192] == mem[204 len 20]
    require mem[224] == mem[236 len 20]
    require mem[256] == mem[268 len 20]
    _8 = mem[288]
    require mem[288] == mem[300 len 20]
    _9 = mem[320]
    _11 = mem[384]
    _12 = mem[416]
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[256]), mem[352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if mem[268 len 20] == mem[300 len 20]:
        require ext_code.size(mem[268 len 20])
        if mem[172 len 20] >= mem[140 len 20]:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[384], 0, address(this.address), 128, 0, None
        else:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, mem[320]
    else:
        if mem[172 len 20] < mem[204 len 20]:
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(mem[288]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[300 len 20])
            if mem[204 len 20] >= mem[140 len 20]:
                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args mem[416], 0, address(this.address), 128, 0, 0, None
            else:
                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, mem[416], address(this.address), 128, 0, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, mem[320]
        else:
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _11, 0, address(mem[288]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if mem[204 len 20] >= mem[140 len 20]:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 196] = _12
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 228] = 0
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 260] = this.address
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, Mask(224, 32, _11) >> 32
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 192 len ceil32(0, Mask(224, 32, _11) >> 32)]
                if ceil32(0, Mask(224, 32, _11) >> 32) <= 0, Mask(224, 32, _11) >> 32:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _12, 0, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
                else:
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 0, Mask(224, 32, _11) >> 32 + 356] = 0
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _12, 0, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_3))
                    call address(_3).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
            else:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 196] = 0
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 228] = _12
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 260] = this.address
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, Mask(224, 32, _11) >> 32
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 192 len ceil32(0, Mask(224, 32, _11) >> 32)]
                if ceil32(0, Mask(224, 32, _11) >> 32) <= 0, Mask(224, 32, _11) >> 32:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _12, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
                else:
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 0, Mask(224, 32, _11) >> 32 + 356] = 0
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _12, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_3))
                    call address(_3).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
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
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    require mem[160] == mem[172 len 20]
    require mem[192] == mem[204 len 20]
    require mem[224] == mem[236 len 20]
    require mem[256] == mem[268 len 20]
    _8 = mem[288]
    require mem[288] == mem[300 len 20]
    _9 = mem[320]
    _11 = mem[384]
    _12 = mem[416]
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[256]), mem[352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if mem[268 len 20] == mem[300 len 20]:
        require ext_code.size(mem[268 len 20])
        if mem[172 len 20] >= mem[140 len 20]:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[384], 0, address(this.address), 128, 0, None
        else:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, mem[320]
    else:
        if mem[172 len 20] < mem[204 len 20]:
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(mem[288]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[300 len 20])
            if mem[204 len 20] >= mem[140 len 20]:
                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args mem[416], 0, address(this.address), 128, 0, 0, None
            else:
                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, mem[416], address(this.address), 128, 0, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, mem[320]
        else:
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _11, 0, address(mem[288]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if mem[204 len 20] >= mem[140 len 20]:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 196] = _12
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 228] = 0
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 260] = this.address
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, Mask(224, 32, _11) >> 32
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 192 len ceil32(0, Mask(224, 32, _11) >> 32)]
                if ceil32(0, Mask(224, 32, _11) >> 32) <= 0, Mask(224, 32, _11) >> 32:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _12, 0, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
                else:
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 0, Mask(224, 32, _11) >> 32 + 356] = 0
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _12, 0, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_3))
                    call address(_3).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
            else:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 196] = 0
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 228] = _12
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 260] = this.address
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, Mask(224, 32, _11) >> 32
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 192 len ceil32(0, Mask(224, 32, _11) >> 32)]
                if ceil32(0, Mask(224, 32, _11) >> 32) <= 0, Mask(224, 32, _11) >> 32:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _12, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
                else:
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 0, Mask(224, 32, _11) >> 32 + 356] = 0
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _12, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_3))
                    call address(_3).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
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
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    require mem[160] == mem[172 len 20]
    require mem[192] == mem[204 len 20]
    require mem[224] == mem[236 len 20]
    require mem[256] == mem[268 len 20]
    _8 = mem[288]
    require mem[288] == mem[300 len 20]
    _9 = mem[320]
    _11 = mem[384]
    _12 = mem[416]
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[256]), mem[352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if mem[268 len 20] == mem[300 len 20]:
        require ext_code.size(mem[268 len 20])
        if mem[172 len 20] >= mem[140 len 20]:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[384], 0, address(this.address), 128, 0, None
        else:
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, mem[320]
    else:
        if mem[172 len 20] < mem[204 len 20]:
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[384], address(mem[288]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[300 len 20])
            if mem[204 len 20] >= mem[140 len 20]:
                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args mem[416], 0, address(this.address), 128, 0, 0, None
            else:
                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, mem[416], address(this.address), 128, 0, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, mem[320]
        else:
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _11, 0, address(mem[288]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if mem[204 len 20] >= mem[140 len 20]:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 196] = _12
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 228] = 0
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 260] = this.address
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, Mask(224, 32, _11) >> 32
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 192 len ceil32(0, Mask(224, 32, _11) >> 32)]
                if ceil32(0, Mask(224, 32, _11) >> 32) <= 0, Mask(224, 32, _11) >> 32:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _12, 0, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
                else:
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 0, Mask(224, 32, _11) >> 32 + 356] = 0
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _12, 0, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_3))
                    call address(_3).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
            else:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 196] = 0
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 228] = _12
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 260] = this.address
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] = 0, Mask(224, 32, _11) >> 32
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 192 len ceil32(0, Mask(224, 32, _11) >> 32)]
                if ceil32(0, Mask(224, 32, _11) >> 32) <= 0, Mask(224, 32, _11) >> 32:
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _12, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
                else:
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 0, Mask(224, 32, _11) >> 32 + 356] = 0
                    require ext_code.size(address(_8))
                    call address(_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _12, address(this.address), 128, 0, Mask(224, 32, _11) >> 32, mem[ceil32(arg4.length) + ceil32(return_data.size) + 356 len ceil32(0, Mask(224, 32, _11) >> 32)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_3))
                    call address(_3).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0xa0ef91df(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xbecda363(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xa0ef91df(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if stor0 != msg.sender:
                        revert with 0, 'Sender not authorized.'
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0xa6f9dae1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if stor0 != msg.sender:
                            revert with 0, 'Sender not authorized.'
                        stor0 = address(cd[4])
            else:
                if unknown_0xbecda363(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    require ('cd', 100).length <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                    mem[('cd', 100).length + 160] = 0
                    require ('cd', 100).length >= 320
                    require mem[160] == mem[172 len 20]
                    require mem[192] == mem[204 len 20]
                    require mem[224] == mem[236 len 20]
                    require mem[256] == mem[268 len 20]
                    require mem[288] == mem[300 len 20]
                    require mem[320] == mem[332 len 20]
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(mem[288]), mem[384]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
                    require ext_code.size(mem[300 len 20])
                    if mem[300 len 20] == mem[332 len 20]:
                        if mem[204 len 20] >= mem[172 len 20]:
                            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[416], 0, address(this.address), 128, 0, None
                        else:
                            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[416], address(this.address), 128, 0
                    else:
                        if mem[204 len 20] >= mem[236 len 20]:
                            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[416], 0, address(mem[320]), 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(mem[332 len 20])
                            if mem[236 len 20] >= mem[172 len 20]:
                                call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[448], 0, address(this.address), 128, 0, 0
                            else:
                                call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[448], address(this.address), 128, 0, 0
                        else:
                            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[416], address(mem[320]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(mem[332 len 20])
                            if mem[236 len 20] >= mem[172 len 20]:
                                call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[448], 0, address(this.address), 128, 0, 0, None
                            else:
                                call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[448], address(this.address), 128, 0, 0, None
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, mem[352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if unknown_0xc7e42b1b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if stor0 != msg.sender:
                            revert with 0, 'Sender not authorized.'
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if unknown_0xf8890f8e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 128
                            require cd[4] == address(cd[4])
                            require cd[100] <= test266151307()
                            require cd[100] + 35 < calldata.size
                            require ('cd', 100).length <= test266151307()
                            require cd[100] + ('cd', 100).length + 36 <= calldata.size
                            mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                            mem[('cd', 100).length + 160] = 0
                            require ('cd', 100).length >= 320
                            require mem[160] == mem[172 len 20]
                            require mem[192] == mem[204 len 20]
                            require mem[224] == mem[236 len 20]
                            require mem[256] == mem[268 len 20]
                            require mem[288] == mem[300 len 20]
                            require mem[320] == mem[332 len 20]
                            require ext_code.size(mem[204 len 20])
                            call mem[204 len 20].transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(mem[288]), mem[384]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
                            require ext_code.size(mem[300 len 20])
                            if mem[300 len 20] == mem[332 len 20]:
                                if mem[204 len 20] >= mem[172 len 20]:
                                    call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[416], 0, address(this.address), 128, 0
                                else:
                                    call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[416], address(this.address), 128, 0
                            else:
                                if mem[204 len 20] >= mem[236 len 20]:
                                    call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[416], 0, address(mem[320]), 128, 0, None
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(mem[332 len 20])
                                    if mem[236 len 20] >= mem[172 len 20]:
                                        call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args mem[448], 0, address(this.address), 128, 0, 0
                                    else:
                                        call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, mem[448], address(this.address), 128, 0, 0
                                else:
                                    call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[416], address(mem[320]), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(mem[332 len 20])
                                    if mem[236 len 20] >= mem[172 len 20]:
                                        call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args mem[448], 0, address(this.address), 128, 0, 0, None
                                    else:
                                        call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, mem[448], address(this.address), 128, 0, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(mem[172 len 20])
                            call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, mem[352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x78b94ae6(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x10d1e85c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    require ('cd', 100).length <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                    mem[('cd', 100).length + 160] = 0
                    require ('cd', 100).length >= 320
                    _25 = mem[160]
                    require mem[160] == mem[172 len 20]
                    require mem[192] == mem[204 len 20]
                    require mem[224] == mem[236 len 20]
                    require mem[256] == mem[268 len 20]
                    require mem[288] == mem[300 len 20]
                    _58 = mem[320]
                    require mem[320] == mem[332 len 20]
                    _64 = mem[352]
                    _66 = mem[416]
                    _67 = mem[448]
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(mem[288]), mem[384]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
                    if mem[300 len 20] == mem[332 len 20]:
                        require ext_code.size(mem[300 len 20])
                        if mem[204 len 20] >= mem[172 len 20]:
                            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[416], 0, address(this.address), 128, 0
                        else:
                            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[416], address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(mem[172 len 20])
                        call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, mem[352]
                    else:
                        if mem[204 len 20] < mem[236 len 20]:
                            require ext_code.size(mem[300 len 20])
                            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[416], address(mem[320]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(mem[332 len 20])
                            if mem[236 len 20] >= mem[172 len 20]:
                                call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[448], 0, address(this.address), 128, 0, 0, None
                            else:
                                call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[448], address(this.address), 128, 0, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(mem[172 len 20])
                            call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, mem[352]
                        else:
                            mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 356 len 0] = None
                            require ext_code.size(mem[300 len 20])
                            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _66, 0, address(mem[320]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[236 len 20] >= mem[172 len 20]:
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 228] = _67
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 260] = 0
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 292] = this.address
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 324] = 128
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 356] = 0, Mask(224, 32, _66) >> 32
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _66) >> 32)] = mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, _66) >> 32)]
                                if ceil32(0, Mask(224, 32, _66) >> 32) <= 0, Mask(224, 32, _66) >> 32:
                                    require ext_code.size(address(_58))
                                    call address(_58).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _67, 0, address(this.address), 128, 0, Mask(224, 32, _66) >> 32, mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _66) >> 32)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _64
                                else:
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 0, Mask(224, 32, _66) >> 32 + 388] = 0
                                    require ext_code.size(address(_58))
                                    call address(_58).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _67, 0, address(this.address), 128, 0, Mask(224, 32, _66) >> 32, mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _66) >> 32)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(_25))
                                    call address(_25).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _64
                            else:
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 228] = 0
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 260] = _67
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 292] = this.address
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 324] = 128
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 356] = 0, Mask(224, 32, _66) >> 32
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _66) >> 32)] = mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, _66) >> 32)]
                                if ceil32(0, Mask(224, 32, _66) >> 32) <= 0, Mask(224, 32, _66) >> 32:
                                    require ext_code.size(address(_58))
                                    call address(_58).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _67, address(this.address), 128, 0, Mask(224, 32, _66) >> 32, mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _66) >> 32)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(mem[172 len 20])
                                    call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _64
                                else:
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 0, Mask(224, 32, _66) >> 32 + 388] = 0
                                    require ext_code.size(address(_58))
                                    call address(_58).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _67, address(this.address), 128, 0, Mask(224, 32, _66) >> 32, mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _66) >> 32)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(_25))
                                    call address(_25).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _64
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if unknown_0x3fc01685(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + ('cd', 100).length + 36 <= calldata.size
                        mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                        mem[('cd', 100).length + 160] = 0
                        require ('cd', 100).length >= 320
                        _30 = mem[160]
                        require mem[160] == mem[172 len 20]
                        require mem[192] == mem[204 len 20]
                        require mem[224] == mem[236 len 20]
                        require mem[256] == mem[268 len 20]
                        require mem[288] == mem[300 len 20]
                        _61 = mem[320]
                        require mem[320] == mem[332 len 20]
                        _79 = mem[352]
                        _81 = mem[416]
                        _82 = mem[448]
                        require ext_code.size(mem[204 len 20])
                        call mem[204 len 20].transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(mem[288]), mem[384]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
                        if mem[300 len 20] == mem[332 len 20]:
                            require ext_code.size(mem[300 len 20])
                            if mem[204 len 20] >= mem[172 len 20]:
                                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[416], 0, address(this.address), 128, 0, None
                            else:
                                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[416], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(mem[172 len 20])
                            call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, mem[352]
                        else:
                            if mem[204 len 20] < mem[236 len 20]:
                                require ext_code.size(mem[300 len 20])
                                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[416], address(mem[320]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(mem[332 len 20])
                                if mem[236 len 20] >= mem[172 len 20]:
                                    call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[448], 0, address(this.address), 128, 0, 0, None
                                else:
                                    call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[448], address(this.address), 128, 0, 0, None
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(mem[172 len 20])
                                call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, mem[352]
                            else:
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 356 len 0] = None
                                require ext_code.size(mem[300 len 20])
                                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _81, 0, address(mem[320]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[236 len 20] >= mem[172 len 20]:
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 228] = _82
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 260] = 0
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 292] = this.address
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 324] = 128
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 356] = 0, Mask(224, 32, _81) >> 32
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _81) >> 32)] = mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, _81) >> 32)]
                                    if ceil32(0, Mask(224, 32, _81) >> 32) <= 0, Mask(224, 32, _81) >> 32:
                                        require ext_code.size(address(_61))
                                        call address(_61).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _82, 0, address(this.address), 128, 0, Mask(224, 32, _81) >> 32, mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _81) >> 32)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(mem[172 len 20])
                                        call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, _79
                                    else:
                                        mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 0, Mask(224, 32, _81) >> 32 + 388] = 0
                                        require ext_code.size(address(_61))
                                        call address(_61).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _82, 0, address(this.address), 128, 0, Mask(224, 32, _81) >> 32, mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _81) >> 32)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(_30))
                                        call address(_30).transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, _79
                                else:
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 228] = 0
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 260] = _82
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 292] = this.address
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 324] = 128
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 356] = 0, Mask(224, 32, _81) >> 32
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _81) >> 32)] = mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, _81) >> 32)]
                                    if ceil32(0, Mask(224, 32, _81) >> 32) <= 0, Mask(224, 32, _81) >> 32:
                                        require ext_code.size(address(_61))
                                        call address(_61).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _82, address(this.address), 128, 0, Mask(224, 32, _81) >> 32, mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _81) >> 32)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(mem[172 len 20])
                                        call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, _79
                                    else:
                                        mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 0, Mask(224, 32, _81) >> 32 + 388] = 0
                                        require ext_code.size(address(_61))
                                        call address(_61).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _82, address(this.address), 128, 0, Mask(224, 32, _81) >> 32, mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _81) >> 32)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(_30))
                                        call address(_30).transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, _79
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0x78b94ae6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    require ('cd', 100).length <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                    mem[('cd', 100).length + 160] = 0
                    require ('cd', 100).length >= 320
                    require mem[160] == mem[172 len 20]
                    require mem[192] == mem[204 len 20]
                    require mem[224] == mem[236 len 20]
                    require mem[256] == mem[268 len 20]
                    require mem[288] == mem[300 len 20]
                    require mem[320] == mem[332 len 20]
                    require ext_code.size(mem[204 len 20])
                    call mem[204 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(mem[288]), mem[384]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
                    require ext_code.size(mem[300 len 20])
                    if mem[300 len 20] == mem[332 len 20]:
                        if mem[204 len 20] >= mem[172 len 20]:
                            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[416], 0, address(this.address), 128, 0
                        else:
                            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[416], address(this.address), 128, 0
                    else:
                        if mem[204 len 20] >= mem[236 len 20]:
                            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[416], 0, address(mem[320]), 128, 0, None
                        else:
                            call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[416], address(mem[320]), 128, 0, None
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(mem[332 len 20])
                        if mem[236 len 20] >= mem[172 len 20]:
                            call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[448], 0, address(this.address), 128, 0, 0
                        else:
                            call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[448], address(this.address), 128, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, mem[352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x84800812(?????):
                        if unknown_0x8788d082(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
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
                            mem[292 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                            mem[('cd', 4).length + 292] = 0
                            require ext_code.size(address(('cd', 4)[3]))
                            if address(('cd', 4)[0]) >= address(('cd', 4)[1]):
                                call address(('cd', 4)[3]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, uint32(('cd', 4)[7]), 0, address(this.address), 128, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 292 len ceil32(('cd', 4).length) - ('cd', 4).length]
                            else:
                                call address(('cd', 4)[3]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, ('cd', 4)[7], address(this.address), 128, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 292 len ceil32(('cd', 4).length) - ('cd', 4).length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + ('cd', 100).length + 36 <= calldata.size
                        mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                        mem[('cd', 100).length + 160] = 0
                        require ('cd', 100).length >= 320
                        _31 = mem[160]
                        require mem[160] == mem[172 len 20]
                        require mem[192] == mem[204 len 20]
                        require mem[224] == mem[236 len 20]
                        require mem[256] == mem[268 len 20]
                        require mem[288] == mem[300 len 20]
                        _62 = mem[320]
                        require mem[320] == mem[332 len 20]
                        _84 = mem[352]
                        _86 = mem[416]
                        _87 = mem[448]
                        require ext_code.size(mem[204 len 20])
                        call mem[204 len 20].transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(mem[288]), mem[384]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
                        if mem[300 len 20] == mem[332 len 20]:
                            require ext_code.size(mem[300 len 20])
                            if mem[204 len 20] >= mem[172 len 20]:
                                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[416], 0, address(this.address), 128, 0
                            else:
                                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[416], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(mem[172 len 20])
                            call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, mem[352]
                        else:
                            if mem[204 len 20] < mem[236 len 20]:
                                require ext_code.size(mem[300 len 20])
                                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, mem[416], address(mem[320]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(mem[332 len 20])
                                if mem[236 len 20] >= mem[172 len 20]:
                                    call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[448], 0, address(this.address), 128, 0, 0, None
                                else:
                                    call mem[332 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, mem[448], address(this.address), 128, 0, 0, None
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(mem[172 len 20])
                                call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, mem[352]
                            else:
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 356 len 0] = None
                                require ext_code.size(mem[300 len 20])
                                call mem[300 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _86, 0, address(mem[320]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[236 len 20] >= mem[172 len 20]:
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 228] = _87
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 260] = 0
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 292] = this.address
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 324] = 128
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 356] = 0, Mask(224, 32, _86) >> 32
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _86) >> 32)] = mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, _86) >> 32)]
                                    if ceil32(0, Mask(224, 32, _86) >> 32) <= 0, Mask(224, 32, _86) >> 32:
                                        require ext_code.size(address(_62))
                                        call address(_62).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _87, 0, address(this.address), 128, 0, Mask(224, 32, _86) >> 32, mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _86) >> 32)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(mem[172 len 20])
                                        call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, _84
                                    else:
                                        mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 0, Mask(224, 32, _86) >> 32 + 388] = 0
                                        require ext_code.size(address(_62))
                                        call address(_62).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _87, 0, address(this.address), 128, 0, Mask(224, 32, _86) >> 32, mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _86) >> 32)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(_31))
                                        call address(_31).transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, _84
                                else:
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 228] = 0
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 260] = _87
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 292] = this.address
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 324] = 128
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 356] = 0, Mask(224, 32, _86) >> 32
                                    mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _86) >> 32)] = mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 224 len ceil32(0, Mask(224, 32, _86) >> 32)]
                                    if ceil32(0, Mask(224, 32, _86) >> 32) <= 0, Mask(224, 32, _86) >> 32:
                                        require ext_code.size(address(_62))
                                        call address(_62).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _87, address(this.address), 128, 0, Mask(224, 32, _86) >> 32, mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _86) >> 32)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(mem[172 len 20])
                                        call mem[172 len 20].transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, _84
                                    else:
                                        mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 0, Mask(224, 32, _86) >> 32 + 388] = 0
                                        require ext_code.size(address(_62))
                                        call address(_62).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _87, address(this.address), 128, 0, Mask(224, 32, _86) >> 32, mem[ceil32(('cd', 100).length) + ceil32(return_data.size) + 388 len ceil32(0, Mask(224, 32, _86) >> 32)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(_31))
                                        call address(_31).transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, _84
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
