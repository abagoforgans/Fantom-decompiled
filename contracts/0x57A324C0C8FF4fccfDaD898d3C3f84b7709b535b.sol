contract main {




// =====================  Runtime code  =====================


address stor0;
address sub_6c6cf20cAddress;
address sub_5e8d2e8eAddress;
mapping of uint256 sub_6e40e2fd;
mapping of uint256 sub_638f510e;

function sub_5e8d2e8e(?) payable {
    return sub_5e8d2e8eAddress
}

function sub_638f510e(?) payable {
    require calldata.size - 4 >= 32
    return sub_638f510e[arg1]
}

function sub_6c6cf20c(?) payable {
    return sub_6c6cf20cAddress
}

function sub_6e40e2fd(?) payable {
    require calldata.size - 4 >= 32
    return sub_6e40e2fd[arg1]
}

function _fallback() payable {
    revert
}

function sub_5a07b03a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'only owner can set !'
    sub_5e8d2e8eAddress = address(arg1)
}

function sub_ecaa72da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'only owner can set !'
    sub_6c6cf20cAddress = address(arg1)
}

function sub_918c720b(?) payable {
    require calldata.size - 4 >= 32
    if not sub_6c6cf20cAddress:
        revert with 0, 'rarity contract need Initializes'
    if not sub_5e8d2e8eAddress:
        revert with 0, 'oloot contract need Initializes'
    require ext_code.size(sub_6c6cf20cAddress)
    staticcall sub_6c6cf20cAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 32, 79, 'you are not the owner of summone', 0, address(ext_call.return_data[0]), 0, msg.sender, 0, 0 >> 376, 0
    if sub_6e40e2fd[arg1]:
        sub_638f510e[stor3[arg1]] = 0
    sub_6e40e2fd[arg1] = 0
}

function sub_335c197f(?) payable {
    require calldata.size - 4 >= 32
    if not sub_6c6cf20cAddress:
        revert with 0, 'rarity contract need Initializes'
    if not sub_5e8d2e8eAddress:
        revert with 0, 'oloot contract need Initializes'
    require ext_code.size(sub_5e8d2e8eAddress)
    staticcall sub_5e8d2e8eAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 32, 86, 'you are not the owner of oloot e', 0, address(ext_call.return_data[0]), 0, msg.sender, 0, 0 >> 432, 0
    require ext_code.size(sub_6c6cf20cAddress)
    staticcall sub_6c6cf20cAddress.0x6352211e with:
            gas gas_remaining wei
           args sub_638f510e[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) == msg.sender:
        if sub_6e40e2fd[stor4[arg1]] == arg1:
            sub_6e40e2fd[arg1] = 0
        sub_638f510e[arg1] = 0
    mem[(2 * ceil32(return_data.size)) + 329] = 32
    mem[(2 * ceil32(return_data.size)) + 361] = ceil32(return_data.size) + 79
    mem[(2 * ceil32(return_data.size)) + 393 len floor32(ceil32(return_data.size) + 110)] = 'you are not the owner of summone', 0, address(ext_call.return_data[0]), 0, msg.sender, 0, mem[(2 * ceil32(return_data.size)) + 329 len floor32(ceil32(return_data.size) + 110) - 83]
    if floor32(ceil32(return_data.size) + 110) > ceil32(return_data.size) + 79:
        mem[(4 * ceil32(return_data.size)) + 472] = 0
    revert with 0, 
                32,
                ceil32(return_data.size) + 79,
                mem[(2 * ceil32(return_data.size)) + 393 len floor32(ceil32(return_data.size) + 110)]
}

function sub_b1264136(?) payable {
    require calldata.size - 4 >= 64
    if not sub_6c6cf20cAddress:
        revert with 0, 'rarity contract need Initializes'
    if not sub_5e8d2e8eAddress:
        revert with 0, 'oloot contract need Initializes'
    if not sub_6c6cf20cAddress:
        revert with 0, 'rarity contract need Initializes'
    if not sub_5e8d2e8eAddress:
        revert with 0, 'oloot contract need Initializes'
    require ext_code.size(sub_6c6cf20cAddress)
    staticcall sub_6c6cf20cAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 32, 79, 'you are not the owner of summone', 0, address(ext_call.return_data[0]), 0, msg.sender, 0, 0 >> 376, 0
    if sub_6e40e2fd[arg1]:
        sub_638f510e[stor3[arg1]] = 0
    sub_6e40e2fd[arg1] = 0
    if not sub_6c6cf20cAddress:
        revert with 0, 'rarity contract need Initializes'
    if not sub_5e8d2e8eAddress:
        revert with 0, 'oloot contract need Initializes'
    require ext_code.size(sub_5e8d2e8eAddress)
    staticcall sub_5e8d2e8eAddress.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        mem[(2 * ceil32(return_data.size)) + 329] = 32
        mem[(2 * ceil32(return_data.size)) + 361] = ceil32(return_data.size) + 86
        mem[(2 * ceil32(return_data.size)) + 393 len floor32(ceil32(return_data.size) + 117)] = 'you are not the owner of oloot e', 0, address(ext_call.return_data[0]), 0, msg.sender, 0, mem[(2 * ceil32(return_data.size)) + 329 len floor32(ceil32(return_data.size) + 117) - 90]
        if floor32(ceil32(return_data.size) + 117) > ceil32(return_data.size) + 86:
            mem[(4 * ceil32(return_data.size)) + 479] = 0
        revert with 0, 
                    32,
                    ceil32(return_data.size) + 86,
                    mem[(2 * ceil32(return_data.size)) + 393 len floor32(ceil32(return_data.size) + 117)]
    require ext_code.size(sub_6c6cf20cAddress)
    staticcall sub_6c6cf20cAddress.0x6352211e with:
            gas gas_remaining wei
           args sub_638f510e[arg2]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        mem[(4 * ceil32(return_data.size)) + 440] = 32
        mem[(4 * ceil32(return_data.size)) + 472] = (5 * ceil32(return_data.size)) + 79
        mem[(4 * ceil32(return_data.size)) + 504 len floor32((5 * ceil32(return_data.size)) + 110)] = 'you are not the owner of summone', 0, address(ext_call.return_data[0]), 0, msg.sender, 0, mem[(4 * ceil32(return_data.size)) + 440 len floor32((5 * ceil32(return_data.size)) + 110) - 83]
        if floor32((5 * ceil32(return_data.size)) + 110) > (5 * ceil32(return_data.size)) + 79:
            mem[(10 * ceil32(return_data.size)) + 583] = 0
        revert with 0, 
                    32,
                    (5 * ceil32(return_data.size)) + 79,
                    mem[(4 * ceil32(return_data.size)) + 504 len floor32((5 * ceil32(return_data.size)) + 110)]
    if sub_6e40e2fd[stor4[arg2]] == arg2:
        sub_6e40e2fd[arg2] = 0
    sub_638f510e[arg2] = 0
    require ext_code.size(sub_6c6cf20cAddress)
    staticcall sub_6c6cf20cAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        mem[(6 * ceil32(return_data.size)) + 551] = 32
        mem[(6 * ceil32(return_data.size)) + 583] = (8 * ceil32(return_data.size)) + 79
        mem[(6 * ceil32(return_data.size)) + 615 len floor32((8 * ceil32(return_data.size)) + 110)] = 'you are not the owner of summone', 0, address(ext_call.return_data[0]), 0, msg.sender, 0, mem[(6 * ceil32(return_data.size)) + 551 len floor32((8 * ceil32(return_data.size)) + 110) - 83]
        if floor32((8 * ceil32(return_data.size)) + 110) > (8 * ceil32(return_data.size)) + 79:
            mem[(15 * ceil32(return_data.size)) + 694] = 0
        revert with 0, 
                    32,
                    (8 * ceil32(return_data.size)) + 79,
                    mem[(6 * ceil32(return_data.size)) + 615 len floor32((8 * ceil32(return_data.size)) + 110)]
    require ext_code.size(sub_5e8d2e8eAddress)
    staticcall sub_5e8d2e8eAddress.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 32, 86, 'you are not the owner of oloot e', 0, address(ext_call.return_data[0]), 0, msg.sender, 0, 0 >> 432, 0
    sub_6e40e2fd[arg1] = arg2
    sub_638f510e[arg2] = arg1
}



}
