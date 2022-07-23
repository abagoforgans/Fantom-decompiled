contract main {




// =====================  Runtime code  =====================


#
#  - init()
#
address stor0;
mapping of struct bens;
mapping of struct posters;
mapping of struct airdrops;
mapping of struct refunds;
address stor5;
address stor6;
address stor7;
uint256 sub_a87f7fb9;
uint256 totalAirdrops;
uint256 sub_e7f54972;
uint256 sub_262504a8;
uint256 sub_2003dded;

function sub_2003dded(?) payable {
    return sub_2003dded
}

function sub_262504a8(?) payable {
    return sub_262504a8
}

function posters(address arg1) payable {
    require calldata.size - 4 >= 32
    return posters[arg1].field_0, posters[arg1].field_128
}

function airdrops(address arg1) payable {
    require calldata.size - 4 >= 32
    return airdrops[arg1].field_0, airdrops[arg1].field_128
}

function totalAirdrops() payable {
    return totalAirdrops
}

function sub_a87f7fb9(?) payable {
    return sub_a87f7fb9
}

function refunds(address arg1) payable {
    require calldata.size - 4 >= 32
    return refunds[arg1].field_0, refunds[arg1].field_0, refunds[arg1].field_256
}

function bens(address arg1) payable {
    require calldata.size - 4 >= 32
    return bens[arg1].field_0, bens[arg1].field_0, bens[arg1].field_256
}

function sub_e7f54972(?) payable {
    return sub_e7f54972
}

function _fallback() payable {
    revert
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor0 = arg1
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor5 = arg1
}

function sub_569c6c17(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    sub_262504a8 -= bens[address(arg1)].field_128
    bens[address(arg1)].field_0 = 0
    bens[address(arg1)].field_0 = bens[address(arg1)].field_0
    bens[address(arg1)].field_256 = 0
}

function sub_8b0791bf(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    if not refunds[address(arg1)].field_128:
        refunds[address(arg1)].field_128 = uint128(block.number)
    refunds[address(arg1)].field_256 = arg2
    refunds[address(arg1)].field_384 = 0
    sub_e7f54972 += arg2
}

function addAirdrop(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    if not airdrops[address(arg1)].field_0:
        totalAirdrops++
    airdrops[address(arg1)].field_0 = uint128(airdrops[address(arg1)].field_0 + arg2)
    if not airdrops[address(arg1)].field_128:
        airdrops[address(arg1)].field_128 = uint128(block.number)
}

function sub_eea7dd3d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == stor5
    idx = 0
    while idx < arg1.length:
        sub_a87f7fb9--
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        posters[mem[(32 * idx) + 140 len 20]].field_0 = 0
        posters[mem[(32 * idx) + 140 len 20]].field_0 = posters[mem[(32 * idx) + 140 len 20]].field_0
        idx = idx + 1
        continue 
}

function sub_5314300a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == stor0
    idx = 0
    while idx < arg1.length:
        totalAirdrops--
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        airdrops[mem[(32 * idx) + 140 len 20]].field_0 = 0
        airdrops[mem[(32 * idx) + 140 len 20]].field_0 = airdrops[mem[(32 * idx) + 140 len 20]].field_0
        idx = idx + 1
        continue 
}

function sub_c9c5e486(?) payable {
    require calldata.size - 4 >= 128
    require msg.sender == stor0
    require not bens[address(arg1)].field_0
    require sub_262504a8 <= 100000 * 10^18
    if arg3 >= block.number:
        if not bens[address(arg1)].field_256:
            bens[address(arg1)].field_256 = uint64(arg3)
            bens[address(arg1)].field_320 = 0
        if not bens[address(arg1)].field_0:
            if bens[address(arg1)].field_256:
                bens[address(arg1)].field_256 = uint64(arg3)
                bens[address(arg1)].field_320 = 0
    else:
        if not bens[address(arg1)].field_256:
            bens[address(arg1)].field_256 = uint64(block.number)
            bens[address(arg1)].field_320 = 0
        if not bens[address(arg1)].field_0:
            if bens[address(arg1)].field_256:
                bens[address(arg1)].field_256 = uint64(block.number)
                bens[address(arg1)].field_320 = 0
    bens[address(arg1)].field_0 = arg2
    bens[address(arg1)].field_128 = arg4
    sub_262504a8 += arg4
}

function sub_a553c5ab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == stor0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if refunds[mem[(32 * idx) + 140 len 20]].field_256 >= sub_e7f54972:
            refunds[mem[(32 * idx) + 140 len 20]].field_256 = sub_e7f54972
        sub_e7f54972 -= refunds[mem[(32 * idx) + 140 len 20]].field_256
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        refunds[mem[(32 * idx) + 140 len 20]].field_0 = 0
        refunds[mem[(32 * idx) + 140 len 20]].field_0 = refunds[mem[(32 * idx) + 140 len 20]].field_0
        refunds[mem[(32 * idx) + 140 len 20]].field_256 = 0
        idx = idx + 1
        continue 
}

function getRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor7)
    staticcall stor7.genesisBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require msg.sender == 0xfacf0d846892a10b1aea9ee000d7700992b64f8
    require ext_code.size(stor6)
    call stor6.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.0x9a67430f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require (93 * 10^14 * block.number) - (93 * 10^14 * ext_call.return_data[0]) > sub_2003dded
    require arg2 <= (93 * 10^14 * block.number) - (93 * 10^14 * ext_call.return_data[0]) - sub_2003dded
    require arg2 <= 0
    sub_2003dded += arg2
}

function sub_6510b99c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == stor5
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not posters[mem[(32 * idx) + 140 len 20]].field_0:
            sub_a87f7fb9++
        require idx < arg2.length
        require idx < arg1.length
        posters[mem[(32 * idx) + 140 len 20]].field_0 = uint128(posters[mem[(32 * idx) + 140 len 20]].field_0 + mem[(32 * idx) + (32 * arg1.length) + 160])
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if not posters[mem[(32 * idx) + 140 len 20]].field_128:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            posters[mem[(32 * idx) + 140 len 20]].field_128 = uint128(block.number)
        idx = idx + 1
        continue 
}

function sub_80abc8d7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == stor0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        if not airdrops[mem[(32 * idx) + 140 len 20]].field_0:
            totalAirdrops++
            require idx < arg2.length
            require idx < arg1.length
            airdrops[mem[(32 * idx) + 140 len 20]].field_0 = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            if not airdrops[mem[(32 * idx) + 140 len 20]].field_128:
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 3
                airdrops[mem[(32 * idx) + 140 len 20]].field_128 = uint128(block.number)
        idx = idx + 1
        continue 
}

function sub_2d19c9b8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    require msg.sender == stor0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg1.length) + 160] >= block.number:
            require idx < arg1.length
            if not refunds[mem[(32 * idx) + 140 len 20]].field_128:
                require idx < arg2.length
                require idx < arg1.length
                refunds[mem[(32 * idx) + 140 len 20]].field_128 = mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
                refunds[mem[(32 * idx) + 140 len 20]].field_192 = 0
        else:
            require idx < arg2.length
            mem[(32 * idx) + (32 * arg1.length) + 160] = block.number
            require idx < arg1.length
            if not refunds[mem[(32 * idx) + 140 len 20]].field_128:
                require idx < arg2.length
                require idx < arg1.length
                refunds[mem[(32 * idx) + 140 len 20]].field_128 = uint64(block.number)
                refunds[mem[(32 * idx) + 140 len 20]].field_192 = 0
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        refunds[mem[(32 * idx) + 140 len 20]].field_256 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 216 len 8]
        refunds[mem[(32 * idx) + 140 len 20]].field_320 = 0
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        sub_e7f54972 += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        idx = idx + 1
        continue 
}

function sub_d4520210(?) payable {
    require ext_code.size(0xed1e639f1a6e2d2ffafa03ef8c03ffc21708cdc3)
    staticcall 0xed1e639f1a6e2d2ffafa03ef8c03ffc21708cdc3.genesisBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    posters[address(msg.sender)].field_128 = uint128(block.number)
    require posters[address(msg.sender)].field_0 > 0
    require ext_call.return_data[0]
    if ext_call.return_data[0] > posters[address(msg.sender)].field_128:
        require block.number > ext_call.return_data[0]
        require sub_a87f7fb9
        require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
        staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (62 * 10^14 * block.number) - (62 * 10^14 * ext_call.return_data[0]) / sub_a87f7fb9 <= posters[address(msg.sender)].field_0:
            if (62 * 10^14 * block.number) - (62 * 10^14 * ext_call.return_data[0]) / sub_a87f7fb9 <= ext_call.return_data[0]:
                posters[address(msg.sender)].field_0 = uint128(posters[address(msg.sender)].field_0 - ((62 * 10^14 * block.number) - (62 * 10^14 * ext_call.return_data[0]) / sub_a87f7fb9))
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (62 * 10^14 * block.number) - (62 * 10^14 * ext_call.return_data[0]) / sub_a87f7fb9
            else:
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                posters[address(msg.sender)].field_0 = uint128(posters[address(msg.sender)].field_0 - ext_call.return_data[0])
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        else:
            if posters[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                posters[address(msg.sender)].field_0 = 0
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, posters[address(msg.sender)].field_0
            else:
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                posters[address(msg.sender)].field_0 = uint128(posters[address(msg.sender)].field_0 - ext_call.return_data[0])
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
    else:
        require block.number > posters[address(msg.sender)].field_128
        require block.number > ext_call.return_data[0]
        require sub_a87f7fb9
        require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
        staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (62 * 10^14 * block.number) - (62 * 10^14 * posters[address(msg.sender)].field_128) / sub_a87f7fb9 <= posters[address(msg.sender)].field_0:
            if (62 * 10^14 * block.number) - (62 * 10^14 * posters[address(msg.sender)].field_128) / sub_a87f7fb9 <= ext_call.return_data[0]:
                posters[address(msg.sender)].field_0 = uint128(posters[address(msg.sender)].field_0 - ((62 * 10^14 * block.number) - (62 * 10^14 * posters[address(msg.sender)].field_128) / sub_a87f7fb9))
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (62 * 10^14 * block.number) - (62 * 10^14 * posters[address(msg.sender)].field_128) / sub_a87f7fb9
            else:
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                posters[address(msg.sender)].field_0 = uint128(posters[address(msg.sender)].field_0 - ext_call.return_data[0])
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        else:
            if posters[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                posters[address(msg.sender)].field_0 = 0
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, posters[address(msg.sender)].field_0
            else:
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                posters[address(msg.sender)].field_0 = uint128(posters[address(msg.sender)].field_0 - ext_call.return_data[0])
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not posters[address(msg.sender)].field_0:
        sub_a87f7fb9--
}

function sub_1ef8b511(?) payable {
    require ext_code.size(0xed1e639f1a6e2d2ffafa03ef8c03ffc21708cdc3)
    staticcall 0xed1e639f1a6e2d2ffafa03ef8c03ffc21708cdc3.genesisBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    refunds[address(msg.sender)].field_128 = uint128(block.number)
    require ext_call.return_data[0]
    if ext_call.return_data[0] > refunds[address(msg.sender)].field_128:
        require block.number > ext_call.return_data[0]
        if block.number / 28 * 10^6 <= 0:
            require sub_e7f54972
            require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
            staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
            if (31 * 10^14 * block.number * refunds[address(msg.sender)].field_256) - (31 * 10^14 * ext_call.return_data[0] * refunds[address(msg.sender)].field_256) / sub_e7f54972 <= ext_call.return_data[0]:
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (31 * 10^14 * block.number * refunds[address(msg.sender)].field_256) - (31 * 10^14 * ext_call.return_data[0] * refunds[address(msg.sender)].field_256) / sub_e7f54972
            else:
                staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        else:
            idx = 0
            s = 31 * 10^14
            while idx < block.number / 28 * 10^6:
                idx = idx + 1
                s = 4 * s / 5
                continue 
            require sub_e7f54972
            require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
            staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
            if (block.number * s * refunds[address(msg.sender)].field_256) - (ext_call.return_data[0] * s * refunds[address(msg.sender)].field_256) / sub_e7f54972 <= ext_call.return_data[0]:
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (block.number * s * refunds[address(msg.sender)].field_256) - (ext_call.return_data[0] * s * refunds[address(msg.sender)].field_256) / sub_e7f54972
            else:
                staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
    else:
        require block.number > refunds[address(msg.sender)].field_128
        require block.number > ext_call.return_data[0]
        if block.number / 28 * 10^6 <= 0:
            require sub_e7f54972
            require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
            staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
            if (31 * 10^14 * block.number * refunds[address(msg.sender)].field_256) - (31 * 10^14 * refunds[address(msg.sender)].field_128 * refunds[address(msg.sender)].field_256) / sub_e7f54972 <= ext_call.return_data[0]:
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (31 * 10^14 * block.number * refunds[address(msg.sender)].field_256) - (31 * 10^14 * refunds[address(msg.sender)].field_128 * refunds[address(msg.sender)].field_256) / sub_e7f54972
            else:
                staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        else:
            idx = 0
            s = 31 * 10^14
            while idx < block.number / 28 * 10^6:
                idx = idx + 1
                s = 4 * s / 5
                continue 
            require sub_e7f54972
            require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
            staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
            if (block.number * s * refunds[address(msg.sender)].field_256) - (refunds[address(msg.sender)].field_128 * s * refunds[address(msg.sender)].field_256) / sub_e7f54972 <= ext_call.return_data[0]:
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (block.number * s * refunds[address(msg.sender)].field_256) - (refunds[address(msg.sender)].field_128 * s * refunds[address(msg.sender)].field_256) / sub_e7f54972
            else:
                staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claimAirdrop() payable {
    require ext_code.size(0xed1e639f1a6e2d2ffafa03ef8c03ffc21708cdc3)
    staticcall 0xed1e639f1a6e2d2ffafa03ef8c03ffc21708cdc3.genesisBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    airdrops[address(msg.sender)].field_128 = uint128(block.number)
    require airdrops[address(msg.sender)].field_0 > 0
    require ext_call.return_data[0]
    if ext_call.return_data[0] > airdrops[address(msg.sender)].field_128:
        require block.number > ext_call.return_data[0]
        require totalAirdrops
        require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
        staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (31 * 10^14 * block.number) - (31 * 10^14 * ext_call.return_data[0]) / totalAirdrops <= airdrops[address(msg.sender)].field_0:
            if (31 * 10^14 * block.number) - (31 * 10^14 * ext_call.return_data[0]) / totalAirdrops <= ext_call.return_data[0]:
                airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ((31 * 10^14 * block.number) - (31 * 10^14 * ext_call.return_data[0]) / totalAirdrops))
                if not airdrops[address(msg.sender)].field_0:
                    totalAirdrops--
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (31 * 10^14 * block.number) - (31 * 10^14 * ext_call.return_data[0]) / totalAirdrops
            else:
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ext_call.return_data[0])
                if not airdrops[address(msg.sender)].field_0:
                    totalAirdrops--
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        else:
            if airdrops[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                airdrops[address(msg.sender)].field_0 = 0
                if not airdrops[address(msg.sender)].field_0:
                    totalAirdrops--
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, airdrops[address(msg.sender)].field_0
            else:
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ext_call.return_data[0])
                if not airdrops[address(msg.sender)].field_0:
                    totalAirdrops--
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
    else:
        require block.number > airdrops[address(msg.sender)].field_128
        require block.number > ext_call.return_data[0]
        require totalAirdrops
        require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
        staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (31 * 10^14 * block.number) - (31 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops <= airdrops[address(msg.sender)].field_0:
            if (31 * 10^14 * block.number) - (31 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops <= ext_call.return_data[0]:
                airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ((31 * 10^14 * block.number) - (31 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops))
                if not airdrops[address(msg.sender)].field_0:
                    totalAirdrops--
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (31 * 10^14 * block.number) - (31 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops
            else:
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ext_call.return_data[0])
                if not airdrops[address(msg.sender)].field_0:
                    totalAirdrops--
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        else:
            if airdrops[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                airdrops[address(msg.sender)].field_0 = 0
                if not airdrops[address(msg.sender)].field_0:
                    totalAirdrops--
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, airdrops[address(msg.sender)].field_0
            else:
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ext_call.return_data[0])
                if not airdrops[address(msg.sender)].field_0:
                    totalAirdrops--
                require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
                call 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_afb1214a(?) payable {
    require ext_code.size(stor7)
    staticcall stor7.genesisBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if bens[address(msg.sender)].field_256 >= ext_call.return_data[0]:
        require block.number > bens[address(msg.sender)].field_256
        if block.number / 28 * 10^6 <= 0:
            require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
            staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (block.number * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (bens[address(msg.sender)].field_256 * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) <= bens[address(msg.sender)].field_0:
                if (block.number * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (bens[address(msg.sender)].field_256 * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) <= ext_call.return_data[0]:
                    bens[address(msg.sender)].field_256 = uint64(block.number)
                    bens[address(msg.sender)].field_320 = 0
                    bens[address(msg.sender)].field_0 = uint128(bens[address(msg.sender)].field_0 - (block.number * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) + (bens[address(msg.sender)].field_256 * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18))
                    require ext_code.size(stor6)
                    call stor6.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.number * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (bens[address(msg.sender)].field_256 * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ((block.number * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (bens[address(msg.sender)].field_256 * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18))
            else:
                if bens[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                    bens[address(msg.sender)].field_256 = uint64(block.number)
                    bens[address(msg.sender)].field_320 = 0
                    bens[address(msg.sender)].field_0 = 0
                    require ext_code.size(stor6)
                    call stor6.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, bens[address(msg.sender)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return bens[address(msg.sender)].field_0
        else:
            idx = 0
            s = 31 * 10^14
            while idx < block.number / 28 * 10^6:
                idx = idx + 1
                s = 4 * s / 5
                continue 
            require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
            staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (block.number * s * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (bens[address(msg.sender)].field_256 * s * bens[address(msg.sender)].field_128 / 100000 * 10^18) <= bens[address(msg.sender)].field_0:
                if (block.number * s * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (bens[address(msg.sender)].field_256 * s * bens[address(msg.sender)].field_128 / 100000 * 10^18) <= ext_call.return_data[0]:
                    bens[address(msg.sender)].field_256 = uint64(block.number)
                    bens[address(msg.sender)].field_320 = 0
                    bens[address(msg.sender)].field_0 = uint128(bens[address(msg.sender)].field_0 - (block.number * s * bens[address(msg.sender)].field_128 / 100000 * 10^18) + (bens[address(msg.sender)].field_256 * s * bens[address(msg.sender)].field_128 / 100000 * 10^18))
                    require ext_code.size(stor6)
                    call stor6.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.number * s * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (bens[address(msg.sender)].field_256 * s * bens[address(msg.sender)].field_128 / 100000 * 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ((block.number * s * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (bens[address(msg.sender)].field_256 * s * bens[address(msg.sender)].field_128 / 100000 * 10^18))
            else:
                if bens[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                    bens[address(msg.sender)].field_256 = uint64(block.number)
                    bens[address(msg.sender)].field_320 = 0
                    bens[address(msg.sender)].field_0 = 0
                    require ext_code.size(stor6)
                    call stor6.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, bens[address(msg.sender)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return bens[address(msg.sender)].field_0
    else:
        require block.number > ext_call.return_data[0]
        if block.number / 28 * 10^6 <= 0:
            require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
            staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (block.number * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (ext_call.return_data[0] * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) <= bens[address(msg.sender)].field_0:
                if (block.number * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (ext_call.return_data[0] * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) <= ext_call.return_data[0]:
                    bens[address(msg.sender)].field_256 = uint64(block.number)
                    bens[address(msg.sender)].field_320 = 0
                    bens[address(msg.sender)].field_0 = uint128(bens[address(msg.sender)].field_0 - (block.number * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) + (ext_call.return_data[0] * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18))
                    require ext_code.size(stor6)
                    call stor6.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.number * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (ext_call.return_data[0] * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ((block.number * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (ext_call.return_data[0] * 31 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18))
            else:
                if bens[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                    bens[address(msg.sender)].field_256 = uint64(block.number)
                    bens[address(msg.sender)].field_320 = 0
                    bens[address(msg.sender)].field_0 = 0
                    require ext_code.size(stor6)
                    call stor6.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, bens[address(msg.sender)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return bens[address(msg.sender)].field_0
        else:
            idx = 0
            s = 31 * 10^14
            while idx < block.number / 28 * 10^6:
                idx = idx + 1
                s = 4 * s / 5
                continue 
            require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
            staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (block.number * s * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (ext_call.return_data[0] * s * bens[address(msg.sender)].field_128 / 100000 * 10^18) <= bens[address(msg.sender)].field_0:
                if (block.number * s * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (ext_call.return_data[0] * s * bens[address(msg.sender)].field_128 / 100000 * 10^18) <= ext_call.return_data[0]:
                    bens[address(msg.sender)].field_256 = uint64(block.number)
                    bens[address(msg.sender)].field_320 = 0
                    bens[address(msg.sender)].field_0 = uint128(bens[address(msg.sender)].field_0 - (block.number * s * bens[address(msg.sender)].field_128 / 100000 * 10^18) + (ext_call.return_data[0] * s * bens[address(msg.sender)].field_128 / 100000 * 10^18))
                    require ext_code.size(stor6)
                    call stor6.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (block.number * s * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (ext_call.return_data[0] * s * bens[address(msg.sender)].field_128 / 100000 * 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ((block.number * s * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (ext_call.return_data[0] * s * bens[address(msg.sender)].field_128 / 100000 * 10^18))
            else:
                if bens[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                    bens[address(msg.sender)].field_256 = uint64(block.number)
                    bens[address(msg.sender)].field_320 = 0
                    bens[address(msg.sender)].field_0 = 0
                    require ext_code.size(stor6)
                    call stor6.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, bens[address(msg.sender)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return bens[address(msg.sender)].field_0
    require ext_code.size(0x7da2331c522d4edfaf545d2f5ef61406d9d637a9)
    staticcall 0x7da2331c522d4edfaf545d2f5ef61406d9d637a9.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    bens[address(msg.sender)].field_256 = uint64(block.number)
    bens[address(msg.sender)].field_320 = 0
    bens[address(msg.sender)].field_0 = uint128(bens[address(msg.sender)].field_0 - ext_call.return_data[0])
    require ext_code.size(stor6)
    call stor6.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
