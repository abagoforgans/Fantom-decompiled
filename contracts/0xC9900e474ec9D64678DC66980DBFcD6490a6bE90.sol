contract main {




// =====================  Runtime code  =====================


mapping of address proposal;
array of address allProposals;

function allProposals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= allProposals.length:
        revert with 0, 50
    return allProposals[arg1]
}

function getProposal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return proposal[arg1]
}

function allProposalsLength() payable {
    return allProposals.length
}

function _fallback() payable {
    revert
}

function sub_4c300076(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == address(arg3)
    require arg4 < 4
    mem[ceil32(arg2.length) + 160] = address(arg1)
    mem[ceil32(arg2.length) + 180 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 180] = 0
    mem[ceil32(arg2.length) + 128] = arg2.length + 20
    if proposal[mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]]:
        revert with 0, 'PROPOSAL_EXISTS'
    if eth.balance(this.address) < 0:
        revert with 0, 'Create2: insufficient balance'
    create2 contract with 0 wei
                    salt: sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
                    code: code.data[1740 len 6033]
    if not address(create2.new_address):
        revert with 0, 'Create2: Failed on deploy'
    if arg4 >= 4:
        revert with 0, 33
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0x113805ed with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    proposal[mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]] = address(create2.new_address)
    allProposals.length++
    allProposals[allProposals.length] = address(create2.new_address)
    if arg4 > 3:
        revert with 0, 33
    emit ProposalCreated(address(arg1), arg4, address(create2.new_address));
    return address(create2.new_address)
}



}
