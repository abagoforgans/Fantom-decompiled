contract main {




// =====================  Runtime code  =====================


mapping of uint256 sub_6e40e2fd;
mapping of uint256 sub_638f510e;

function sub_638f510e(?) payable {
    require calldata.size - 4 >= 32
    return sub_638f510e[arg1]
}

function sub_6e40e2fd(?) payable {
    require calldata.size - 4 >= 32
    return sub_6e40e2fd[arg1]
}

function _fallback() payable {
    revert
}

function sub_993db764(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'you are not the owner of summoner'
    if sub_6e40e2fd[arg1]:
        sub_638f510e[stor0[arg1]] = 0
    sub_6e40e2fd[arg1] = 0
}

function sub_b1264136(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'you are not the owner of summoner'
    require ext_code.size(0xb7f74dc30233873c4bc3560593e935a982d06bae)
    staticcall 0xb7f74dc30233873c4bc3560593e935a982d06bae.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'you are not the owner of oloot equipment'
    sub_6e40e2fd[arg1] = arg2
    sub_638f510e[arg2] = arg1
}



}
