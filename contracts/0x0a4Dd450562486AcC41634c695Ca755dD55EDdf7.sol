contract main {




// =====================  Runtime code  =====================


const votingPeriod = 100

const quorumVotes = 100 * 10^18

const proposalThreshold = 10 * 10^18

const sub_d11d0d58(?) = 2000


address votingTokenAddress;
uint256 proposalCount;
mapping of struct proposals;
mapping of struct receipts;
mapping of uint256 voteLock;
mapping of uint256 balanceOf;

function proposals(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return proposals[arg1].field_0, 
           proposals[arg1].field_256,
           proposals[arg1].field_512,
           proposals[arg1].field_768,
           proposals[arg1].field_1024,
           proposals[arg1].field_1280,
           bool(proposals[arg1].field_1536)
}

function receipts(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(receipts[arg1][arg2].field_0), bool(receipts[arg1][arg2].field_8), receipts[arg1][arg2].field_256
}

function voteLock(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return voteLock[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function votingToken() {
    return votingTokenAddress
}

function proposalCount() {
    return proposalCount
}

function _fallback() payable {
    revert
}

function withdraw() {
    if block.timestamp <= voteLock[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Governance::withdraw: wait until voteLock expiration'
    require ext_code.size(votingTokenAddress)
    call votingTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balanceOf[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] = 0
}

function state(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::state: invalid proposal id'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::state: invalid proposal id'
    if proposals[arg1].field_512 > -101:
        revert with 'NH{q', 17
    if block.timestamp <= proposals[arg1].field_512 + 100:
        return 0
    if bool(proposals[arg1].field_1536) == 1:
        return 4
    if proposals[arg1].field_768 <= proposals[arg1].field_1024:
        return 1
    if proposals[arg1].field_768 < 100 * 10^18:
        return 1
    if proposals[arg1].field_512 > -2001:
        revert with 'NH{q', 17
    if block.timestamp >= proposals[arg1].field_512 + 2000:
        return 3
    return 2
}

function sub_d9d2f79e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(votingTokenAddress)
    staticcall votingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(votingTokenAddress)
    call votingTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if balanceOf[address(msg.sender)] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += ext_call.return_data[0]
    if block.timestamp > -101:
        revert with 'NH{q', 17
    voteLock[address(msg.sender)] = block.timestamp + 100
    if balanceOf[address(msg.sender)] < 10 * 10^18:
        revert with 0, 'Governance::propose: proposer votes below proposal threshold'
    if proposalCount == -1:
        revert with 'NH{q', 17
    proposalCount++
    proposals[stor1].field_0 = proposalCount
    proposals[stor1].field_256 = msg.sender
    proposals[stor1].field_512 = block.timestamp
    proposals[stor1].field_768 = 0
    proposals[stor1].field_1024 = 0
    proposals[stor1].field_1280 = sha3(address(arg1), Array(len=arg2.length, data=arg2[all]))
    proposals[stor1].field_1536 = 0
    return proposalCount
}

function sub_d3d34e62(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    require ext_code.size(votingTokenAddress)
    staticcall votingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(votingTokenAddress)
    call votingTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if balanceOf[address(msg.sender)] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += ext_call.return_data[0]
    if block.timestamp > -101:
        revert with 'NH{q', 17
    voteLock[address(msg.sender)] = block.timestamp + 100
    if proposalCount < arg1:
        revert with 0, 'Governance::state: invalid proposal id'
    if arg1 <= 0:
        revert with 0, 'Governance::state: invalid proposal id'
    if proposals[arg1].field_512 > -101:
        revert with 'NH{q', 17
    if block.timestamp > proposals[arg1].field_512 + 100:
        if bool(proposals[arg1].field_1536) != 1:
            if proposals[arg1].field_768 > proposals[arg1].field_1024:
                if proposals[arg1].field_768 >= 100 * 10^18:
                    if proposals[arg1].field_512 > -2001:
                        revert with 'NH{q', 17
        revert with 0, 'Governance::vote: voting is closed'
    if receipts[arg1][address(msg.sender)].field_0:
        revert with 0, 'Governance::vote: voter already voted'
    if not arg2:
        if proposals[arg1].field_1024 > -balanceOf[address(msg.sender)] - 1:
            revert with 'NH{q', 17
        proposals[arg1].field_1024 += balanceOf[address(msg.sender)]
    else:
        if proposals[arg1].field_768 > -balanceOf[address(msg.sender)] - 1:
            revert with 'NH{q', 17
        proposals[arg1].field_768 += balanceOf[address(msg.sender)]
    receipts[arg1][address(msg.sender)].field_0 = 1
    receipts[arg1][address(msg.sender)].field_8 = Mask(248, 0, bool(arg2))
    receipts[arg1][address(msg.sender)].field_256 = balanceOf[address(msg.sender)]
}

function sub_b540547d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(ceil32(arg3.length)) + 225 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) <= arg3.length:
        if proposals[arg1].field_1280 != sha3(address(arg2), Array(len=arg3.length, data=arg3[all])):
            revert with 0, 'Governance::execute: Invalid proposal'
        if proposalCount < arg1:
            revert with 0, 'Governance::state: invalid proposal id'
        if arg1 <= 0:
            revert with 0, 'Governance::state: invalid proposal id'
        if proposals[arg1].field_512 > -101:
            revert with 'NH{q', 17
        if block.timestamp <= proposals[arg1].field_512 + 100:
            revert with 0, 'Governance::execute: Cannot be executed'
        if bool(proposals[arg1].field_1536) == 1:
            revert with 0, 'Governance::execute: Cannot be executed'
        if proposals[arg1].field_768 <= proposals[arg1].field_1024:
            revert with 0, 'Governance::execute: Cannot be executed'
        if proposals[arg1].field_768 < 100 * 10^18:
            revert with 0, 'Governance::execute: Cannot be executed'
        if proposals[arg1].field_512 > -2001:
            revert with 'NH{q', 17
        if block.timestamp < proposals[arg1].field_512 + 2000:
            revert with 0, 'Governance::execute: Cannot be executed'
        mem[ceil32(ceil32(arg3.length)) + ceil32(arg3.length) + 225 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, ceil32(arg3.length) + 96) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
        if ceil32(arg3.length) > arg3.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(arg3.length) + arg3.length + 225] = 0
        delegate address(arg2).mem[ceil32(ceil32(arg3.length)) + ceil32(arg3.length) + 225 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg3.length)) + ceil32(arg3.length) + 229 len arg3.length - 4]
        if not delegate.return_code:
            revert with 0, 'Governance::execute: Transaction execution reverted.'
        proposals[arg1].field_1536 = 1
        if not return_data.size:
            return Array(len=arg3.length, data=arg3[all])
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(ceil32(arg3.length)) + arg3.length + 225] = 0
    if proposals[arg1].field_1280 != sha3(address(arg2), Array(len=arg3.length, data=arg3[all])):
        revert with 0, 'Governance::execute: Invalid proposal'
    if proposalCount < arg1:
        revert with 0, 'Governance::state: invalid proposal id'
    if arg1 <= 0:
        revert with 0, 'Governance::state: invalid proposal id'
    if proposals[arg1].field_512 > -101:
        revert with 'NH{q', 17
    if block.timestamp <= proposals[arg1].field_512 + 100:
        revert with 0, 'Governance::execute: Cannot be executed'
    if bool(proposals[arg1].field_1536) == 1:
        revert with 0, 'Governance::execute: Cannot be executed'
    if proposals[arg1].field_768 <= proposals[arg1].field_1024:
        revert with 0, 'Governance::execute: Cannot be executed'
    if proposals[arg1].field_768 < 100 * 10^18:
        revert with 0, 'Governance::execute: Cannot be executed'
    if proposals[arg1].field_512 > -2001:
        revert with 'NH{q', 17
    if block.timestamp < proposals[arg1].field_512 + 2000:
        revert with 0, 'Governance::execute: Cannot be executed'
    mem[ceil32(ceil32(arg3.length)) + ceil32(arg3.length) + 225 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, ceil32(arg3.length) + 96) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(ceil32(arg3.length)) + ceil32(arg3.length) + arg3.length + 225] = 0
    delegate address(arg2) with:
       funct (Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256)
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg3.length)) + ceil32(arg3.length) + 229 len arg3.length - 4]
    if not delegate.return_code:
        revert with 0, 'Governance::execute: Transaction execution reverted.'
    proposals[arg1].field_1536 = 1
    if return_data.size:
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(ceil32(arg3.length)) + ceil32(arg3.length) + 225] = 32
    mem[ceil32(ceil32(arg3.length)) + ceil32(arg3.length) + 257] = arg3.length
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
           mem[ceil32(ceil32(arg3.length)) + arg3.length + 257 len (2 * ceil32(arg3.length)) + -arg3.length + 32]
}



}
