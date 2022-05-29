contract main {




// =====================  Runtime code  =====================


#
#  - getProfit(address arg1, address arg2)
#  - flashArbitrage(address arg1, address arg2)
#
address stor0;
address owner;
mapping of uint8 stor3;
array of struct stor4;
mapping of uint256 stor5;

function baseTokensContains(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function owner() {
    return owner
}

function whitelist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    stor3[address(arg1)] = uint8(arg2)
}

function addBaseToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not stor5[address(arg1)]:
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor4[stor4.length].field_160 = 0
        stor5[address(arg1)] = stor4.length
    emit BaseTokenAdded(arg1);
}

function getBaseTokens() {
    require stor4.length <= test266151307()
    mem[96] = stor4.length
    mem[64] = (32 * stor4.length) + 128
    if stor4.length:
        mem[128 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        require idx < stor4.length
        mem[(32 * idx) + 128] = stor4[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor4.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4.length) + -mem[64] + 192
}

function removeBaseToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor5[address(arg1)]:
        if stor5[address(arg1)] - 1 != stor4.length - 1:
            require stor4.length - 1 < stor4.length
            require stor5[address(arg1)] - 1 < stor4.length
            stor4[stor5[address(arg1)]].field_0 = stor4[stor4.length].field_0
            stor5[stor4[stor4.length].field_0] = stor5[address(arg1)]
        require stor4.length
        stor4[stor4.length].field_0 = 0
        stor4.length--
        stor5[address(arg1)] = 0
    emit BaseTokenRemoved(arg1);
}

function withdraw() payable {
    mem[64] = 96
    require not msg.value
    if not eth.balance(this.address):
        if var48002 >= stor4.length:
        require var54001 < stor4.length
        mem[0] = 4
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[var64001] = this.address
        require ext_code.size(var66003)
        staticcall var68002.mem[var68003 len 4] with:
                gas gas_remaining wei
               args mem[var68003 + 4 len var68004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var72002 - var72001 >= 32
        # nil
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(owner, eth.balance(this.address));
        if var50002 >= stor4.length:
        require var56001 < stor4.length
        mem[0] = 4
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[var66001] = this.address
        require ext_code.size(var68003)
        staticcall var70002.mem[var70003 len 4] with:
                gas gas_remaining wei
               args mem[var70003 + 4 len var70004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var74002 - var74001 >= 32
        # nil
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require calldata.size >= arg4.length + arg4 + 36
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if stor0 != msg.sender:
        revert with 0, 'Non permissioned address call'
    if arg1 != this.address:
        revert with 0, 'Not from this contract'
    require arg4.length >= 224
    require bool(ceil32(arg4.length) + 352 <= test266151307())
    require mem[128] == mem[140 len 20]
    mem[ceil32(arg4.length) + 128] = mem[128]
    require mem[160] == mem[172 len 20]
    mem[ceil32(arg4.length) + 160] = mem[160]
    require mem[192] == bool(mem[192])
    mem[ceil32(arg4.length) + 192] = mem[192]
    require mem[224] == mem[236 len 20]
    mem[ceil32(arg4.length) + 224] = mem[224]
    require mem[256] == mem[268 len 20]
    mem[ceil32(arg4.length) + 256] = mem[256]
    mem[ceil32(arg4.length) + 288] = mem[288]
    mem[ceil32(arg4.length) + 320] = mem[320]
    if arg2 > 0:
        mem[ceil32(arg4.length) + 452 len 96] = 0, mem[ceil32(arg4.length) + 172 len 20], arg2, mem[ceil32(arg4.length) + 452 len 28]
    else:
        mem[ceil32(arg4.length) + 452 len 96] = 0, mem[ceil32(arg4.length) + 172 len 20], arg3, mem[ceil32(arg4.length) + 452 len 28]
    mem[ceil32(arg4.length) + 520] = 0
    call mem[ceil32(arg4.length) + 236 len 20].mem[ceil32(arg4.length) + 452 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + 456 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'TRANSFER_FAILED'
        mem[ceil32(arg4.length) + 484] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if mem[ceil32(arg4.length) + 192]:
            mem[ceil32(arg4.length) + 488] = mem[ceil32(arg4.length) + 320]
            mem[ceil32(arg4.length) + 520] = 0
            mem[ceil32(arg4.length) + 552] = this.address
            mem[ceil32(arg4.length) + 584] = 128
            mem[ceil32(arg4.length) + 616] = mem[ceil32(arg4.length) + 452]
            mem[ceil32(arg4.length) + 648 len ceil32(mem[ceil32(arg4.length) + 452])] = mem[ceil32(arg4.length) + 484 len ceil32(mem[ceil32(arg4.length) + 452])]
            if ceil32(mem[ceil32(arg4.length) + 452]) > mem[ceil32(arg4.length) + 452]:
                mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 452] + 648] = 0
            require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
            call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[ceil32(arg4.length) + 320], 0, address(this.address), 128, mem[ceil32(arg4.length) + 452], mem[ceil32(arg4.length) + 648 len ceil32(mem[ceil32(arg4.length) + 452])]
        else:
            mem[ceil32(arg4.length) + 488] = 0
            mem[ceil32(arg4.length) + 520] = mem[ceil32(arg4.length) + 320]
            mem[ceil32(arg4.length) + 552] = this.address
            mem[ceil32(arg4.length) + 584] = 128
            mem[ceil32(arg4.length) + 616] = mem[ceil32(arg4.length) + 452]
            mem[ceil32(arg4.length) + 648 len ceil32(mem[ceil32(arg4.length) + 452])] = mem[ceil32(arg4.length) + 484 len ceil32(mem[ceil32(arg4.length) + 452])]
            if ceil32(mem[ceil32(arg4.length) + 452]) > mem[ceil32(arg4.length) + 452]:
                mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 452] + 648] = 0
            require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
            call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[ceil32(arg4.length) + 320], address(this.address), 128, mem[ceil32(arg4.length) + 452], mem[ceil32(arg4.length) + 648 len ceil32(mem[ceil32(arg4.length) + 452])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 584 len 96] = 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0
        call mem[ceil32(arg4.length) + 268 len 20] with:
           funct Mask(32, 224, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TRANSFER_FAILED'
            if arg4.length:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TRANSFER_FAILED'
        else:
            mem[ceil32(arg4.length) + 616 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(arg4.length) + 616] == bool(mem[ceil32(arg4.length) + 616])
                if not mem[ceil32(arg4.length) + 616]:
                    revert with 0, 'TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + 452] = return_data.size
        mem[ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + 484] == bool(mem[ceil32(arg4.length) + 484])
            if not mem[ceil32(arg4.length) + 484]:
                revert with 0, 'TRANSFER_FAILED'
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 485] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if mem[ceil32(arg4.length) + 192]:
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 489] = mem[ceil32(arg4.length) + 320]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 553] = this.address
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 585] = 128
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 617] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 453]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 649 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453])] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 485 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453])]
            if ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453]) > mem[ceil32(arg4.length) + ceil32(return_data.size) + 453]:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + mem[ceil32(arg4.length) + ceil32(return_data.size) + 453] + 649] = 0
            require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
            call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[ceil32(arg4.length) + 320], 0, address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 453], mem[ceil32(arg4.length) + ceil32(return_data.size) + 649 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453])]
        else:
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 489] = 0
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 521] = mem[ceil32(arg4.length) + 320]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 553] = this.address
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 585] = 128
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 617] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 453]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 649 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453])] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 485 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453])]
            if ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453]) > mem[ceil32(arg4.length) + ceil32(return_data.size) + 453]:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + mem[ceil32(arg4.length) + ceil32(return_data.size) + 453] + 649] = 0
            require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
            call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[ceil32(arg4.length) + 320], address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 453], mem[ceil32(arg4.length) + ceil32(return_data.size) + 649 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 585 len 96] = 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0
        call mem[ceil32(arg4.length) + 268 len 20] with:
           funct Mask(32, 224, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TRANSFER_FAILED'
            if arg4.length:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TRANSFER_FAILED'
        else:
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'TRANSFER_FAILED',
                            mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(arg4.length) + ceil32(return_data.size) + 617] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 617])
                if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 617]:
                    revert with 0, 
                                'TRANSFER_FAILED',
                                mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function _fallback() {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require calldata.size >= arg4.length + arg4 + 36
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if stor0 != msg.sender:
        revert with 0, 'Non permissioned address call'
    if address(arg1) != this.address:
        revert with 0, 'Not from this contract'
    require arg4.length >= 224
    require bool(ceil32(arg4.length) + 352 <= test266151307())
    require mem[128] == mem[140 len 20]
    mem[ceil32(arg4.length) + 128] = mem[128]
    require mem[160] == mem[172 len 20]
    mem[ceil32(arg4.length) + 160] = mem[160]
    require mem[192] == bool(mem[192])
    mem[ceil32(arg4.length) + 192] = mem[192]
    require mem[224] == mem[236 len 20]
    mem[ceil32(arg4.length) + 224] = mem[224]
    require mem[256] == mem[268 len 20]
    mem[ceil32(arg4.length) + 256] = mem[256]
    mem[ceil32(arg4.length) + 288] = mem[288]
    mem[ceil32(arg4.length) + 320] = mem[320]
    if arg2 > 0:
        mem[ceil32(arg4.length) + 452 len 96] = 0, mem[ceil32(arg4.length) + 172 len 20], arg2, mem[ceil32(arg4.length) + 452 len 28]
    else:
        mem[ceil32(arg4.length) + 452 len 96] = 0, mem[ceil32(arg4.length) + 172 len 20], arg3, mem[ceil32(arg4.length) + 452 len 28]
    mem[ceil32(arg4.length) + 520] = 0
    call mem[ceil32(arg4.length) + 236 len 20].mem[ceil32(arg4.length) + 452 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + 456 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'TRANSFER_FAILED'
        mem[ceil32(arg4.length) + 484] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if mem[ceil32(arg4.length) + 192]:
            mem[ceil32(arg4.length) + 488] = mem[ceil32(arg4.length) + 320]
            mem[ceil32(arg4.length) + 520] = 0
            mem[ceil32(arg4.length) + 552] = this.address
            mem[ceil32(arg4.length) + 584] = 128
            mem[ceil32(arg4.length) + 616] = mem[ceil32(arg4.length) + 452]
            mem[ceil32(arg4.length) + 648 len ceil32(mem[ceil32(arg4.length) + 452])] = mem[ceil32(arg4.length) + 484 len ceil32(mem[ceil32(arg4.length) + 452])]
            if ceil32(mem[ceil32(arg4.length) + 452]) > mem[ceil32(arg4.length) + 452]:
                mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 452] + 648] = 0
            require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
            call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[ceil32(arg4.length) + 320], 0, address(this.address), 128, mem[ceil32(arg4.length) + 452], mem[ceil32(arg4.length) + 648 len ceil32(mem[ceil32(arg4.length) + 452])]
        else:
            mem[ceil32(arg4.length) + 488] = 0
            mem[ceil32(arg4.length) + 520] = mem[ceil32(arg4.length) + 320]
            mem[ceil32(arg4.length) + 552] = this.address
            mem[ceil32(arg4.length) + 584] = 128
            mem[ceil32(arg4.length) + 616] = mem[ceil32(arg4.length) + 452]
            mem[ceil32(arg4.length) + 648 len ceil32(mem[ceil32(arg4.length) + 452])] = mem[ceil32(arg4.length) + 484 len ceil32(mem[ceil32(arg4.length) + 452])]
            if ceil32(mem[ceil32(arg4.length) + 452]) > mem[ceil32(arg4.length) + 452]:
                mem[ceil32(arg4.length) + mem[ceil32(arg4.length) + 452] + 648] = 0
            require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
            call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[ceil32(arg4.length) + 320], address(this.address), 128, mem[ceil32(arg4.length) + 452], mem[ceil32(arg4.length) + 648 len ceil32(mem[ceil32(arg4.length) + 452])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 584 len 96] = 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0
        call mem[ceil32(arg4.length) + 268 len 20] with:
           funct Mask(32, 224, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TRANSFER_FAILED'
            if arg4.length:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TRANSFER_FAILED'
        else:
            mem[ceil32(arg4.length) + 616 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(arg4.length) + 616] == bool(mem[ceil32(arg4.length) + 616])
                if not mem[ceil32(arg4.length) + 616]:
                    revert with 0, 'TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + 452] = return_data.size
        mem[ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + 484] == bool(mem[ceil32(arg4.length) + 484])
            if not mem[ceil32(arg4.length) + 484]:
                revert with 0, 'TRANSFER_FAILED'
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 485] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if mem[ceil32(arg4.length) + 192]:
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 489] = mem[ceil32(arg4.length) + 320]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 521] = 0
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 553] = this.address
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 585] = 128
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 617] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 453]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 649 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453])] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 485 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453])]
            if ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453]) > mem[ceil32(arg4.length) + ceil32(return_data.size) + 453]:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + mem[ceil32(arg4.length) + ceil32(return_data.size) + 453] + 649] = 0
            require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
            call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[ceil32(arg4.length) + 320], 0, address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 453], mem[ceil32(arg4.length) + ceil32(return_data.size) + 649 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453])]
        else:
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 489] = 0
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 521] = mem[ceil32(arg4.length) + 320]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 553] = this.address
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 585] = 128
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 617] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 453]
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 649 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453])] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 485 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453])]
            if ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453]) > mem[ceil32(arg4.length) + ceil32(return_data.size) + 453]:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + mem[ceil32(arg4.length) + ceil32(return_data.size) + 453] + 649] = 0
            require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
            call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[ceil32(arg4.length) + 320], address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 453], mem[ceil32(arg4.length) + ceil32(return_data.size) + 649 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 453])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 585 len 96] = 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0
        call mem[ceil32(arg4.length) + 268 len 20] with:
           funct Mask(32, 224, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TRANSFER_FAILED'
            if arg4.length:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TRANSFER_FAILED'
        else:
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'TRANSFER_FAILED',
                            mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(arg4.length) + ceil32(return_data.size) + 617] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 617])
                if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 617]:
                    revert with 0, 
                                'TRANSFER_FAILED',
                                mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    return arg4[all]
}



}
