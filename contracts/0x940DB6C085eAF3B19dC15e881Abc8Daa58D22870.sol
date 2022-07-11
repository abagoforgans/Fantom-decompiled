contract main {




// =====================  Runtime code  =====================


address chairpersonAddress;
mapping of struct voters;
array of struct proposals;

function proposals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < proposals.length
    return proposals[arg1].field_0, proposals[arg1].field_256
}

function chairperson() payable {
    return chairpersonAddress
}

function voters(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return voters[arg1].field_0, bool(voters[arg1].field_256), voters[arg1].field_256, voters[arg1].field_512
}

function winnerName() payable {
    idx = 0
    s = 0
    while idx < proposals.length:
        mem[0] = 2
        if proposals[idx].field_256 <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= proposals.length:
            revert with 'NH{q', 50
        mem[0] = 2
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = proposals[idx].field_256
        continue 
    if 0 >= proposals.length:
        revert with 'NH{q', 50
    return uint256(proposals.field_0)
}

function _fallback() payable {
    revert
}

function giveRightToVote(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if chairpersonAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only chairperson can give right to vote.'
    if voters[address(arg1)].field_256:
        revert with 0, 'The voter already voted.'
    require not voters[address(arg1)].field_0
    voters[address(arg1)].field_0 = 1
}

function winningProposal() payable {
    idx = 0
    s = 0
    while idx < proposals.length:
        mem[0] = 2
        if proposals[idx].field_256 <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= proposals.length:
            revert with 'NH{q', 50
        mem[0] = 2
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = proposals[idx].field_256
        continue 
    return 0
}

function vote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not voters[address(msg.sender)].field_0:
        revert with 0, 'Has no right to vote'
    if voters[address(msg.sender)].field_256:
        revert with 0, 'Already voted.'
    voters[address(msg.sender)].field_256 = 1
    voters[address(msg.sender)].field_512 = arg1
    if arg1 >= proposals.length:
        revert with 'NH{q', 50
    if proposals[arg1].field_256 > -voters[address(msg.sender)].field_0 - 1:
        revert with 'NH{q', 17
    proposals[arg1].field_256 += voters[address(msg.sender)].field_0
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if voters[address(msg.sender)].field_256:
        revert with 0, 'You already voted.'
    if arg1 == msg.sender:
        revert with 0, 'Self-delegation is disallowed.'
    s = arg1
    while voters[address(arg1)].field_264:
        if voters[address(s)].field_264 == msg.sender:
            revert with 0, 'Found loop in delegation.'
        mem[0] = voters[address(s)].field_264
        mem[32] = 1
        s = voters[address(s)].field_264
        continue 
    voters[address(msg.sender)].field_256 = 1
    voters[address(msg.sender)].field_264 = address(s)
    if not voters[address(s)].field_256:
        if voters[address(s)].field_0 > -voters[address(msg.sender)].field_0 - 1:
            revert with 'NH{q', 17
        voters[address(s)].field_0 += voters[address(msg.sender)].field_0
    else:
        if voters[address(s)].field_512 >= proposals.length:
            revert with 'NH{q', 50
        if proposals[stor1[address(s)].field_512].field_256 > -voters[address(msg.sender)].field_0 - 1:
            revert with 'NH{q', 17
        proposals[stor1[address(s)].field_512].field_256 += voters[address(msg.sender)].field_0
}



}
