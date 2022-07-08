contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
mapping of uint8 stor5;

function checkowner(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function _fallback() payable {
    revert
}

function setOwner(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor3 != msg.sender:
        revert with 0, 32, 34, 0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e, mem[(32 * arg1.length) + 230 len 30]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function rugPull(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor3
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'amount not enough'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getpair(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
    staticcall 0xef45d134b73241eda7703fa787148d9c9f4950b0.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
    staticcall 0xef45d134b73241eda7703fa787148d9c9f4950b0.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
    staticcall 0xef45d134b73241eda7703fa787148d9c9f4950b0.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]):
        return '', mem[388 len 60]
    if not address(ext_call.return_data[0]):
        if not ext_call.return_data[12 len 20]:
            return Array(len=2, data=call.data[calldata.size len 64])
    return '', mem[388 len 92]
}

function swap(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor5[address(msg.sender)]:
        revert with 0, 'not whitelist'
    mem[224 len 96] = call.data[calldata.size len 96]
    require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
    staticcall 0xef45d134b73241eda7703fa787148d9c9f4950b0.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
    staticcall 0xef45d134b73241eda7703fa787148d9c9f4950b0.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xef45d134b73241eda7703fa787148d9c9f4950b0)
    staticcall 0xef45d134b73241eda7703fa787148d9c9f4950b0.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]):
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor0)
        staticcall stor0.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'FAIL TO APPROVE'
        mem[320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[324] = ext_call.return_data[0]
        mem[356] = 0
        mem[420] = arg2
        mem[452] = block.timestamp + 120
        mem[388] = 160
        mem[484] = 2
        mem[516 len 0] = None
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(arg2), block.timestamp + 120, 2, mem[516 len 64]
    else:
        if address(ext_call.return_data[0]):
            mem[288] = arg1
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            staticcall stor0.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                require ext_code.size(stor0)
                call stor0.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'FAIL TO APPROVE'
            mem[320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[324] = ext_call.return_data[0]
            mem[356] = 0
            mem[420] = arg2
            mem[452] = block.timestamp + 120
            mem[388] = 160
            mem[484] = 3
            mem[516 len 0] = None
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(arg2), block.timestamp + 120, 3, mem[516 len 96]
        else:
            if not ext_call.return_data[12 len 20]:
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor0)
                staticcall stor0.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    require ext_code.size(stor0)
                    call stor0.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'FAIL TO APPROVE'
                mem[320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[324] = ext_call.return_data[0]
                mem[356] = 0
                mem[420] = arg2
                mem[452] = block.timestamp + 120
                mem[388] = 160
                mem[484] = 2
                mem[516 len 64] = call.data[calldata.size len 64]
                require ext_code.size(stor4)
                call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(arg2), block.timestamp + 120, 2, call.data[calldata.size len 64]
            else:
                mem[288] = arg1
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor0)
                staticcall stor0.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    require ext_code.size(stor0)
                    call stor0.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'FAIL TO APPROVE'
                mem[320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[324] = ext_call.return_data[0]
                mem[356] = 0
                mem[420] = arg2
                mem[452] = block.timestamp + 120
                mem[388] = 160
                mem[484] = 3
                mem[516 len 0] = None
                require ext_code.size(stor4)
                call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(arg2), block.timestamp + 120, 3, mem[516 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 320
    require return_data.size >= 32
    require mem[320 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[320 len 4], ext_call.return_data[0 len 28] + 320] <= 4294967296 and mem[320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 <= return_data.size
}



}
