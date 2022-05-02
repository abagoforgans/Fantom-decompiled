contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint256 sub_e221228c;
mapping of struct sub_fa1454c6;
array of address stor5;
address stor6;
uint256 startTime;
uint256 endTime;
uint256 numVoters;
uint8 stor10;
uint256 sub_174f5a27;
address sub_ae7c8354Address;
uint8 voteActive; offset 160
uint128 stor13; offset 160
address sub_6c558ea6Address;
uint256 sub_4756a81f;
uint256 sub_660cf362;
uint256 sub_1392aa01;
uint256 sub_095b75be;
uint256 sub_5c44e0ec;
uint256 sub_3683e573;

function sub_095b75be(?) payable {
    return sub_095b75be
}

function sub_1392aa01(?) payable {
    return sub_1392aa01
}

function sub_174f5a27(?) payable {
    return sub_174f5a27
}

function endTime() payable {
    return endTime
}

function sub_3683e573(?) payable {
    return sub_3683e573
}

function sub_4756a81f(?) payable {
    return sub_4756a81f
}

function numVoters() payable {
    return numVoters
}

function sub_5c44e0ec(?) payable {
    return sub_5c44e0ec
}

function sub_660cf362(?) payable {
    return sub_660cf362
}

function sub_6c558ea6(?) payable {
    return sub_6c558ea6Address
}

function voteActive() payable {
    return bool(voteActive)
}

function startTime() payable {
    return startTime
}

function voteComplete() payable {
    return bool(stor10)
}

function sub_ae7c8354(?) payable {
    return sub_ae7c8354Address
}

function sub_e221228c(?) payable {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: only whitelisted voters allowed'
    return sub_e221228c[address(msg.sender)]
}

function sub_fa1454c6(?) payable {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0, 'DUMBInitialDAO: only whitelisted voters allowed'
    return sub_fa1454c6[address(msg.sender)].field_0, 
           sub_fa1454c6[address(msg.sender)].field_256,
           sub_fa1454c6[address(msg.sender)].field_512
}

function _fallback() payable {
    revert
}

function amIAdmin() payable {
    return (msg.sender == stor6)
}

function replaceAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: only admin can do this'
    stor6 = arg1
}

function setPrivateAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: only admin can do this'
    if voteActive:
        revert with 0, 'DUMBInitialDAO: voting is ready'
    sub_6c558ea6Address = arg1
}

function sub_fc53aa00(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: only admin can do this'
    if voteActive:
        revert with 0, 'DUMBInitialDAO: voting is ready'
    sub_ae7c8354Address = address(arg1)
}

function sub_08de24c5(?) payable {
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: only admin can do this'
    if voteActive:
        revert with 0, 'DUMBInitialDAO: vote is active'
    if block.timestamp >= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: voting is not setup or active'
    stor13 = 1
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: only admin can do this'
    if block.timestamp >= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: voting is not setup or active'
    stor0[address(arg1)] = 0
}

function sub_c4d30041(?) payable {
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: only admin can do this'
    if not voteActive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: vote is not active'
    if block.timestamp >= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDao: vote is not active'
    stor13 = 0
}

function sub_f99efc1c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == bool(arg3)
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: only admin can do this'
    if bool(stor0[address(arg1)]) != 1:
        stor0[address(arg1)] = 1
    if sub_e221228c[address(arg1)] != arg2:
        sub_e221228c[address(arg1)] = arg2
    if not arg3:
        stor2[address(arg1)] = 0
    else:
        stor2[address(arg1)] = 1
}

function startVote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: only admin can do this'
    if startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDao: vote has already started'
    if arg1 >= 48:
        revert with 0, 'DUMBInitialDao: max 48 hours'
    startTime = block.timestamp
    if arg1 and 3600 > -1 / arg1:
        revert with 'NH{q', 17
    if startTime > (-3600 * arg1) - 1:
        revert with 'NH{q', 17
    endTime = startTime + (3600 * arg1)
    stor13 = 1
}

function tallyVotes() payable {
    sub_4756a81f = 0
    sub_660cf362 = 0
    sub_1392aa01 = 0
    sub_095b75be = 0
    sub_5c44e0ec = 0
    sub_3683e573 = 0
    if not stor10:
        idx = 0
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 4
            if sub_fa1454c6[stor5[idx]].field_0 == 1:
                if sub_4756a81f > -sub_e221228c[stor5[idx]] - 1:
                    revert with 'NH{q', 17
                sub_4756a81f += sub_e221228c[stor5[idx]]
            else:
                if sub_fa1454c6[stor5[idx]].field_0 == 2:
                    if sub_660cf362 > -sub_e221228c[stor5[idx]] - 1:
                        revert with 'NH{q', 17
                    sub_660cf362 += sub_e221228c[stor5[idx]]
            if sub_fa1454c6[stor5[idx]].field_256 == 1:
                if sub_1392aa01 > -sub_e221228c[stor5[idx]] - 1:
                    revert with 'NH{q', 17
                sub_1392aa01 += sub_e221228c[stor5[idx]]
            else:
                if sub_fa1454c6[stor5[idx]].field_256 == 2:
                    if sub_095b75be > -sub_e221228c[stor5[idx]] - 1:
                        revert with 'NH{q', 17
                    sub_095b75be += sub_e221228c[stor5[idx]]
            if sub_fa1454c6[stor5[idx]].field_512 == 1:
                if sub_5c44e0ec > -sub_e221228c[stor5[idx]] - 1:
                    revert with 'NH{q', 17
                sub_5c44e0ec += sub_e221228c[stor5[idx]]
            else:
                if sub_fa1454c6[stor5[idx]].field_512 == 2:
                    if sub_3683e573 > -sub_e221228c[stor5[idx]] - 1:
                        revert with 'NH{q', 17
                    sub_3683e573 += sub_e221228c[stor5[idx]]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_9b17a9a1(?) payable {
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: only admin can do this'
    if startTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: voting is not complete'
    if voteActive:
        if block.timestamp <= endTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: voting is not complete'
    if not stor10:
        require ext_code.size(this.address)
        call this.address.0x378a2178 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_4756a81f < sub_660cf362:
            sub_174f5a27 = 2
        else:
            sub_174f5a27 = 1
        idx = 0
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 2
            if not stor2[stor5[idx]]:
                mem[164] = 100000 * 10^18
                require ext_code.size(sub_6c558ea6Address)
                if sub_174f5a27 != 1:
                    call sub_6c558ea6Address.0xd8ba5bee with:
                         gas gas_remaining wei
                        args stor5[idx], 500, 100000 * 10^18
                else:
                    call sub_6c558ea6Address.0xd8ba5bee with:
                         gas gas_remaining wei
                        args stor5[idx], 2000, 100000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96] = 0x4711ffe900000000000000000000000000000000000000000000000000000000
                mem[100] = stor5[idx]
                mem[132] = 1000 * 10^18
                require ext_code.size(sub_6c558ea6Address)
                call sub_6c558ea6Address.0x4711ffe9 with:
                     gas gas_remaining wei
                    args stor5[idx], 1000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor10 = 1
}

function vote(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if bool(voteActive) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: vote is not active'
    if block.timestamp <= startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: outside of voting period'
    if block.timestamp >= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: outside of voting period'
    if arg1 != 1:
        if arg1 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: invalid vote cast'
    if arg2 != 1:
        if arg2 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: invalid vote cast'
    if arg3 != 1:
        if arg3 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBInitialDAO: invalid vote cast'
    require ext_code.size(sub_ae7c8354Address)
    staticcall sub_ae7c8354Address.0x93fe948c with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        require ext_code.size(sub_ae7c8354Address)
        staticcall sub_ae7c8354Address.0xaafbb120 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if not bool((2 * ceil32(return_data.size)) + 256 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[128]
        if ext_call.return_data[64] > 0:
            stor0[address(msg.sender)] = 1
            sub_e221228c[address(msg.sender)] = ext_call.return_data[64]
            stor2[address(msg.sender)] = 1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0, 'DUMBInitialDAO: only whitelisted voters allowed'
    sub_fa1454c6[address(msg.sender)].field_0 = arg1
    sub_fa1454c6[address(msg.sender)].field_256 = arg2
    sub_fa1454c6[address(msg.sender)].field_512 = arg3
    if not stor1[address(msg.sender)]:
        stor1[address(msg.sender)] = 1
        stor5.length++
        stor5[stor5.length] = msg.sender
        if numVoters > -2:
            revert with 'NH{q', 17
        numVoters++
    require ext_code.size(this.address)
    call this.address.0x378a2178 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
