contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
uint256 sub_262504a8;
mapping of struct bens;
mapping of struct posters;
mapping of struct airdrops;
mapping of struct refunds;
address stor6;
address stor7;
address stor8;
uint256 sub_a87f7fb9;
uint256 totalAirdrops;
uint256 sub_5e685494;
uint256 sub_e7f54972;

function sub_262504a8(?) payable {
    return sub_262504a8
}

function sub_5e685494(?) payable {
    return sub_5e685494
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
    return refunds[arg1].field_0, refunds[arg1].field_0, refunds[arg1].field_192
}

function bens(address arg1) payable {
    require calldata.size - 4 >= 32
    return bens[arg1].field_0, bens[arg1].field_0, bens[arg1].field_192
}

function sub_e7f54972(?) payable {
    return sub_e7f54972
}

function _fallback() payable {
    revert
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0.field_0)
    stor6 = arg1
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0.field_0)
    address(stor0.field_0) = arg1
}

function getRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor8)
    staticcall stor8.0x4cdc9c63 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require msg.sender == 0x800b51e28d69268d34e2875232592be4a177a9e3
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_eea7dd3d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == stor6
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        posters[mem[(32 * idx) + 140 len 20]].field_0 = 0
        posters[mem[(32 * idx) + 140 len 20]].field_0 = posters[mem[(32 * idx) + 140 len 20]].field_0
        idx = idx + 1
        continue 
}

function sub_c9c5e486(?) payable {
    require calldata.size - 4 >= 128
    require msg.sender == address(stor0.field_0)
    require not bens[address(arg1)].field_0
    require sub_262504a8 <= 100000 * 10^18
    if arg3 >= block.number:
        if not bens[address(arg1)].field_128:
            bens[address(arg1)].field_128 = uint64(arg3)
        if not bens[address(arg1)].field_0:
            if bens[address(arg1)].field_128:
                bens[address(arg1)].field_128 = uint64(arg3)
    else:
        if not bens[address(arg1)].field_128:
            bens[address(arg1)].field_128 = uint64(block.number)
        if not bens[address(arg1)].field_0:
            if bens[address(arg1)].field_128:
                bens[address(arg1)].field_128 = uint64(block.number)
    bens[address(arg1)].field_0 = arg2
    bens[address(arg1)].field_192 = arg4
    sub_262504a8 += arg4
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
    require msg.sender == stor6
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
        mem[32] = 3
        if not posters[mem[(32 * idx) + 140 len 20]].field_128:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            posters[mem[(32 * idx) + 140 len 20]].field_128 = uint128(block.number)
        idx = idx + 1
        continue 
}

function sub_e3af5952(?) payable {
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
    require msg.sender == address(stor0.field_0)
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if not airdrops[mem[(32 * idx) + 140 len 20]].field_0:
            totalAirdrops++
            require idx < arg2.length
            require idx < arg1.length
            airdrops[mem[(32 * idx) + 140 len 20]].field_0 = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            if not airdrops[mem[(32 * idx) + 140 len 20]].field_128:
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 4
                airdrops[mem[(32 * idx) + 140 len 20]].field_128 = uint128(block.number)
        idx = idx + 1
        continue 
}

function init() payable {
    require not uint8(stor0.field_160)
    require msg.sender == 0x5c8403a2617aca5c86946e32e14148776e37f72a
    Mask(96, 0, stor0.field_160) = 1
    address(stor0.field_0) = msg.sender
    stor7 = 0xf36720fa8ec801c1d36a8d4b43b9634dbae096ee
    stor8 = 0x2ff4ef291a7a5f65c3ddebdb9d64dbfb0925b6f8
    require msg.sender == address(stor0.field_0)
    require not bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_0
    require sub_262504a8 <= 100000 * 10^18
    if 0 >= block.number:
        if not bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_128:
            bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_128 = 0
        if not bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_0:
            if bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_128:
                bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_128 = 0
    else:
        if not bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_128:
            bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_128 = uint64(block.number)
        if not bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_0:
            if bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_128:
                bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_128 = uint64(block.number)
    bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_0 = 0
    bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_16 = 1525878906250 * 10^6
    bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_80 = 0
    bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_192 = 0
    bens[0x5c8403a2617aca5c86946e32e14148776e37f72a].field_208 = 142266239122240
    sub_262504a8 += 50000 * 10^18
}

function sub_d4520210(?) payable {
    require ext_code.size(stor8)
    staticcall stor8.0x4cdc9c63 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require posters[address(msg.sender)].field_0 > 0
    require ext_call.return_data[0]
    require block.number > posters[address(msg.sender)].field_128
    require block.number > ext_call.return_data[0]
    require sub_a87f7fb9
    if (62 * 10^14 * block.number) - (62 * 10^14 * posters[address(msg.sender)].field_128) / sub_a87f7fb9 <= posters[address(msg.sender)].field_0:
        posters[address(msg.sender)].field_0 = uint128(posters[address(msg.sender)].field_0 - ((62 * 10^14 * block.number) - (62 * 10^14 * posters[address(msg.sender)].field_128) / sub_a87f7fb9))
        require ext_code.size(stor7)
        call stor7.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (62 * 10^14 * block.number) - (62 * 10^14 * posters[address(msg.sender)].field_128) / sub_a87f7fb9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not posters[address(msg.sender)].field_0:
            sub_a87f7fb9--
        return ((62 * 10^14 * block.number) - (62 * 10^14 * posters[address(msg.sender)].field_128) / sub_a87f7fb9)
    posters[address(msg.sender)].field_0 = 0
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, posters[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not posters[address(msg.sender)].field_0:
        sub_a87f7fb9--
    return posters[address(msg.sender)].field_0
}

function claimAirdrop() payable {
    require ext_code.size(stor8)
    staticcall stor8.0x4cdc9c63 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require airdrops[address(msg.sender)].field_0 > 0
    require ext_call.return_data[0]
    require block.number > airdrops[address(msg.sender)].field_128
    require block.number > ext_call.return_data[0]
    if block.number / 28 * 10^6 <= 0:
        require totalAirdrops
        if (31 * 10^14 * block.number) - (31 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops <= airdrops[address(msg.sender)].field_0:
            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ((31 * 10^14 * block.number) - (31 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops))
            if not airdrops[address(msg.sender)].field_0:
                totalAirdrops--
            require ext_code.size(stor7)
            call stor7.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (31 * 10^14 * block.number) - (31 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not airdrops[address(msg.sender)].field_0:
                airdrops[address(msg.sender)].field_0 = 0
            return ((31 * 10^14 * block.number) - (31 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops)
    else:
        idx = 0
        s = 31 * 10^14
        while idx < block.number / 28 * 10^6:
            idx = idx + 1
            s = 4 * s / 5
            continue 
        require totalAirdrops
        if (block.number * s) - (airdrops[address(msg.sender)].field_128 * s) / totalAirdrops <= airdrops[address(msg.sender)].field_0:
            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ((block.number * s) - (airdrops[address(msg.sender)].field_128 * s) / totalAirdrops))
            if not airdrops[address(msg.sender)].field_0:
                totalAirdrops--
            require ext_code.size(stor7)
            call stor7.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (block.number * s) - (airdrops[address(msg.sender)].field_128 * s) / totalAirdrops
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not airdrops[address(msg.sender)].field_0:
                airdrops[address(msg.sender)].field_0 = 0
            return ((block.number * s) - (airdrops[address(msg.sender)].field_128 * s) / totalAirdrops)
    airdrops[address(msg.sender)].field_0 = 0
    if not airdrops[address(msg.sender)].field_0:
        totalAirdrops--
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, airdrops[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not airdrops[address(msg.sender)].field_0:
        airdrops[address(msg.sender)].field_0 = 0
    return airdrops[address(msg.sender)].field_0
}

function sub_3a45e6fd(?) payable {
    require ext_code.size(stor8)
    staticcall stor8.0x4cdc9c63 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require refunds[address(msg.sender)].field_0 > 0
    require ext_call.return_data[0]
    require block.number > refunds[address(msg.sender)].field_128
    require block.number > ext_call.return_data[0]
    if block.number / 28 * 10^6 <= 0:
        require refunds[address(msg.sender)].field_192
        if (31 * 10^14 * block.number) - (31 * 10^14 * refunds[address(msg.sender)].field_128) / refunds[address(msg.sender)].field_192 * sub_e7f54972 <= refunds[address(msg.sender)].field_0:
            refunds[address(msg.sender)].field_0 = uint128(refunds[address(msg.sender)].field_0 - ((31 * 10^14 * block.number) - (31 * 10^14 * refunds[address(msg.sender)].field_128) / refunds[address(msg.sender)].field_192 * sub_e7f54972))
            if not refunds[address(msg.sender)].field_0:
                sub_e7f54972 -= refunds[address(msg.sender)].field_192
            require ext_code.size(stor7)
            call stor7.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (31 * 10^14 * block.number) - (31 * 10^14 * refunds[address(msg.sender)].field_128) / refunds[address(msg.sender)].field_192 * sub_e7f54972
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ((31 * 10^14 * block.number) - (31 * 10^14 * refunds[address(msg.sender)].field_128) / refunds[address(msg.sender)].field_192 * sub_e7f54972)
    else:
        idx = 0
        s = 31 * 10^14
        while idx < block.number / 28 * 10^6:
            idx = idx + 1
            s = 4 * s / 5
            continue 
        require refunds[address(msg.sender)].field_192
        if (block.number * s) - (refunds[address(msg.sender)].field_128 * s) / refunds[address(msg.sender)].field_192 * sub_e7f54972 <= refunds[address(msg.sender)].field_0:
            refunds[address(msg.sender)].field_0 = uint128(refunds[address(msg.sender)].field_0 - ((block.number * s) - (refunds[address(msg.sender)].field_128 * s) / refunds[address(msg.sender)].field_192 * sub_e7f54972))
            if not refunds[address(msg.sender)].field_0:
                sub_e7f54972 -= refunds[address(msg.sender)].field_192
            require ext_code.size(stor7)
            call stor7.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (block.number * s) - (refunds[address(msg.sender)].field_128 * s) / refunds[address(msg.sender)].field_192 * sub_e7f54972
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ((block.number * s) - (refunds[address(msg.sender)].field_128 * s) / refunds[address(msg.sender)].field_192 * sub_e7f54972)
    refunds[address(msg.sender)].field_0 = 0
    if not refunds[address(msg.sender)].field_0:
        sub_e7f54972 -= refunds[address(msg.sender)].field_192
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, refunds[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return refunds[address(msg.sender)].field_0
}

function sub_5954e98c(?) payable {
    require calldata.size - 4 >= 128
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
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0
    require msg.sender == address(stor0.field_0)
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require not refunds[mem[(32 * idx) + 140 len 20]].field_0
        require idx < arg3.length
        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] >= block.number:
            require idx < arg1.length
            if not refunds[mem[(32 * idx) + 140 len 20]].field_128:
                require idx < arg3.length
                require idx < arg1.length
                refunds[mem[(32 * idx) + 140 len 20]].field_128 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 216 len 8]
            require idx < arg1.length
            if not refunds[mem[(32 * idx) + 140 len 20]].field_0:
                if refunds[mem[(32 * idx) + 140 len 20]].field_128:
                    require idx < arg3.length
                    require idx < arg1.length
                    refunds[mem[(32 * idx) + 140 len 20]].field_128 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 216 len 8]
        else:
            require idx < arg3.length
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = block.number
            require idx < arg1.length
            if not refunds[mem[(32 * idx) + 140 len 20]].field_128:
                require idx < arg3.length
                require idx < arg1.length
                refunds[mem[(32 * idx) + 140 len 20]].field_128 = uint64(block.number)
            require idx < arg1.length
            if not refunds[mem[(32 * idx) + 140 len 20]].field_0:
                if refunds[mem[(32 * idx) + 140 len 20]].field_128:
                    require idx < arg3.length
                    require idx < arg1.length
                    refunds[mem[(32 * idx) + 140 len 20]].field_128 = uint64(block.number)
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        require idx < arg1.length
        refunds[mem[(32 * idx) + 140 len 20]].field_192 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 248 len 8]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        sub_e7f54972 += mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        refunds[mem[(32 * idx) + 140 len 20]].field_0 = uint128(refunds[mem[(32 * idx) + 140 len 20]].field_0 + mem[(32 * idx) + (32 * arg1.length) + 160])
        idx = idx + 1
        continue 
}

function sub_afb1214a(?) payable {
    require ext_code.size(stor8)
    staticcall stor8.0x4cdc9c63 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if bens[address(msg.sender)].field_128 >= ext_call.return_data[0]:
        require block.number > bens[address(msg.sender)].field_128
        if block.number / 28 * 10^6 <= 0:
            if (block.number * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18) - (bens[address(msg.sender)].field_128 * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18) <= bens[address(msg.sender)].field_0:
                bens[address(msg.sender)].field_128 = uint64(block.number)
                bens[address(msg.sender)].field_0 = uint128(bens[address(msg.sender)].field_0 - (block.number * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18) + (bens[address(msg.sender)].field_128 * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18))
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (block.number * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18) - (bens[address(msg.sender)].field_128 * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ((block.number * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18) - (bens[address(msg.sender)].field_128 * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18))
        else:
            idx = 0
            s = 31 * 10^14
            while idx < block.number / 28 * 10^6:
                idx = idx + 1
                s = 4 * s / 5
                continue 
            if (block.number * s * bens[address(msg.sender)].field_192 / 100000 * 10^18) - (bens[address(msg.sender)].field_128 * s * bens[address(msg.sender)].field_192 / 100000 * 10^18) <= bens[address(msg.sender)].field_0:
                bens[address(msg.sender)].field_128 = uint64(block.number)
                bens[address(msg.sender)].field_0 = uint128(bens[address(msg.sender)].field_0 - (block.number * s * bens[address(msg.sender)].field_192 / 100000 * 10^18) + (bens[address(msg.sender)].field_128 * s * bens[address(msg.sender)].field_192 / 100000 * 10^18))
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (block.number * s * bens[address(msg.sender)].field_192 / 100000 * 10^18) - (bens[address(msg.sender)].field_128 * s * bens[address(msg.sender)].field_192 / 100000 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ((block.number * s * bens[address(msg.sender)].field_192 / 100000 * 10^18) - (bens[address(msg.sender)].field_128 * s * bens[address(msg.sender)].field_192 / 100000 * 10^18))
    else:
        require block.number > ext_call.return_data[0]
        if block.number / 28 * 10^6 <= 0:
            if (block.number * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18) - (ext_call.return_data[0] * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18) <= bens[address(msg.sender)].field_0:
                bens[address(msg.sender)].field_128 = uint64(block.number)
                bens[address(msg.sender)].field_0 = uint128(bens[address(msg.sender)].field_0 - (block.number * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18) + (ext_call.return_data[0] * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18))
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (block.number * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18) - (ext_call.return_data[0] * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ((block.number * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18) - (ext_call.return_data[0] * 31 * 10^14 * bens[address(msg.sender)].field_192 / 100000 * 10^18))
        else:
            idx = 0
            s = 31 * 10^14
            while idx < block.number / 28 * 10^6:
                idx = idx + 1
                s = 4 * s / 5
                continue 
            if (block.number * s * bens[address(msg.sender)].field_192 / 100000 * 10^18) - (ext_call.return_data[0] * s * bens[address(msg.sender)].field_192 / 100000 * 10^18) <= bens[address(msg.sender)].field_0:
                bens[address(msg.sender)].field_128 = uint64(block.number)
                bens[address(msg.sender)].field_0 = uint128(bens[address(msg.sender)].field_0 - (block.number * s * bens[address(msg.sender)].field_192 / 100000 * 10^18) + (ext_call.return_data[0] * s * bens[address(msg.sender)].field_192 / 100000 * 10^18))
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (block.number * s * bens[address(msg.sender)].field_192 / 100000 * 10^18) - (ext_call.return_data[0] * s * bens[address(msg.sender)].field_192 / 100000 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ((block.number * s * bens[address(msg.sender)].field_192 / 100000 * 10^18) - (ext_call.return_data[0] * s * bens[address(msg.sender)].field_192 / 100000 * 10^18))
    bens[address(msg.sender)].field_128 = uint64(block.number)
    bens[address(msg.sender)].field_0 = 0
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, bens[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bens[address(msg.sender)].field_0
}



}
