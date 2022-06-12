contract main {




// =====================  Runtime code  =====================


const name = '', 0

const decimals = 18

const symbol = '', 0


uint256 authority;
uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
mapping of uint256 claimed;
uint256 tokenCount;
mapping of address sub_f6be413c;
mapping of address sub_977d9122;
mapping of address sub_4a88537d;

function totalSupply() payable {
    return totalSupply
}

function sub_4a88537d(?) payable {
    require calldata.size - 4 >= 32
    return sub_4a88537d[arg1]
}

function sub_977d9122(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_977d9122[address(arg1)]
}

function balanceOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function tokenCount() payable {
    return tokenCount
}

function authority() payable {
    return authority
}

function allowance(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function claimed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return claimed[arg1]
}

function sub_f6be413c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f6be413c[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_c65275dc(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] / 2 > 0x2f394219248446baa23d2ec729af3d610607aa0167dd94ca:
        revert with 0, 17
    if totalSupply > !(100 * 10^18 * ext_call.return_data[0] / 2):
        revert with 0, 17
    totalSupply += 100 * 10^18 * ext_call.return_data[0] / 2
    if balanceOf[arg1] > !(100 * 10^18 * ext_call.return_data[0] / 2):
        revert with 0, 17
    balanceOf[arg1] += 100 * 10^18 * ext_call.return_data[0] / 2
    emit Transfer((100 * 10^18 * ext_call.return_data[0] / 2), authority, arg1);
}

function approve(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    allowance[arg1][arg2] = arg3
    emit Approval(arg3, arg1, arg2);
    return 1
}

function sub_8541b6de(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require address(arg1)
    require not sub_f6be413c[address(arg1)]
    create2 contract with 0 wei
                    salt: arg3
                    code: code.data[2979 len 12182]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(create2.new_address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).setup(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_f6be413c[address(arg1)] = address(create2.new_address)
    sub_977d9122[address(create2.new_address)] = address(arg1)
    if 1 > !tokenCount:
        revert with 0, 17
    tokenCount++
    sub_4a88537d[stor5 + 1] = address(arg1)
    emit 0x1313a38f: arg2, address(arg1), address(create2.new_address)
    return address(create2.new_address)
}

function transfer(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    if balanceOf[arg1] < arg3:
        revert with 0, 17
    balanceOf[arg1] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferFrom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    if arg1 != arg2:
        if allowance[arg2][arg1] != -1:
            if allowance[arg2][arg1] < arg4:
                revert with 0, 17
            allowance[arg2][arg1] -= arg4
            emit Approval((allowance[arg2][arg1] - arg4), arg2, arg1);
    if balanceOf[arg2] < arg4:
        revert with 0, 17
    balanceOf[arg2] -= arg4
    if balanceOf[arg3] > !arg4:
        revert with 0, 17
    balanceOf[arg3] += arg4
    emit Transfer(arg4, arg2, arg3);
    return 1
}



}
