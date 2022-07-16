contract main {




// =====================  Runtime code  =====================


function pay() payable {
    call this.address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == 0xd780876b1a3aba25b0ab27b8e748fbcd482b3740
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_81d14b05(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
    call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.setApprovalForAll(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg1), bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function get(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == 0xd780876b1a3aba25b0ab27b8e748fbcd482b3740
    require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
    call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4dd020da(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require ext_code.size(0xb3b96df217e88ee51513c0abc036c3d0fc885eaa)
    staticcall 0xb3b96df217e88ee51513c0abc036c3d0fc885eaa.get_needed_items() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 4).length) + 97 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ceil32(32 * ('cd', 4).length) + 128 < ceil32(32 * ('cd', 4).length) + return_data.size + 97
    if not bool(ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 289 <= test266151307()):
        revert with 0, 65
    require return_data.size >= 192
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 192] = ext_call.return_data[0 len 192]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'don't need now'
    require ext_code.size(0xb3b96df217e88ee51513c0abc036c3d0fc885eaa)
    call 0xb3b96df217e88ee51513c0abc036c3d0fc885eaa.0xf59bc5ed with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x1b9265b8(?????) == uint32(call.func_hash) >> 224:
            call this.address with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x2e1a7d4d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require msg.sender == 0xd780876b1a3aba25b0ab27b8e748fbcd482b3740
                call msg.sender with:
                   value cd[4] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x4dd020da(?????):
                    if unknown_0x81d14b05(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == bool(cd[36])
                        require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
                        call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.setApprovalForAll(address arg1, bool arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), bool(cd[36])
                    else:
                        require unknown_0x9507d39a(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require msg.sender == 0xd780876b1a3aba25b0ab27b8e748fbcd482b3740
                        require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
                        call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args this.address, msg.sender, cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                    s = cd[4] + 36
                    t = 160
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[t] = cd[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    require ext_code.size(0xb3b96df217e88ee51513c0abc036c3d0fc885eaa)
                    staticcall 0xb3b96df217e88ee51513c0abc036c3d0fc885eaa.get_needed_items() with:
                            gas gas_remaining wei
                    mem[ceil32(32 * ('cd', 4).length) + 129 len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    require ceil32(32 * ('cd', 4).length) + 160 < ceil32(32 * ('cd', 4).length) + return_data.size + 129
                    if not bool(ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 321 <= test266151307()):
                        revert with 0, 65
                    require return_data.size >= 192
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 192] = ext_call.return_data[0 len 192]
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 'don't need now'
                    require ext_code.size(0xb3b96df217e88ee51513c0abc036c3d0fc885eaa)
                    call 0xb3b96df217e88ee51513c0abc036c3d0fc885eaa.0xf59bc5ed with:
                         gas gas_remaining wei
                        args Array(len=('cd', 4).length, data=mem[160 len 32 * ('cd', 4).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
}



}
