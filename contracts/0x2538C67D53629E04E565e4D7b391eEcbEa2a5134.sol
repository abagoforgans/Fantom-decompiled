contract main {




// =====================  Runtime code  =====================


const name = 'Rarity Gold ERC20', 0

const decimals = 18

const symbol = 'eGOLD', 0

const proxy = 4021946


uint256 totalSupply;
mapping of uint256 sub_eabecf96;
mapping of uint256 balancesOf;
mapping of uint256 allowances;

function totalSupply() payable {
    return totalSupply
}

function allowances(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowances[arg1][arg2]
}

function balancesOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balancesOf[arg1]
}

function sub_eabecf96(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_eabecf96[arg1]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowances[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender
    require arg1
    if arg2 > balancesOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if balancesOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balancesOf[address(msg.sender)] -= arg2
    if balancesOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if balancesOf[address(arg1)] + arg2 < balancesOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balancesOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 != msg.sender:
        if arg3 > allowances[address(arg1)][address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if allowances[address(arg1)][address(msg.sender)] < arg3:
            revert with 'NH{q', 17
        allowances[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowances[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    require arg1
    require arg2
    if arg3 > balancesOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if balancesOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balancesOf[address(arg1)] -= arg3
    if balancesOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    if balancesOf[address(arg2)] + arg3 < balancesOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balancesOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    if arg2 > balancesOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if balancesOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balancesOf[address(msg.sender)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, msg.sender, 0);
    if arg2 > sub_eabecf96[arg1]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_eabecf96[arg1] < arg2:
        revert with 'NH{q', 17
    sub_eabecf96[arg1] -= arg2
    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 4021946, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.transferFrom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 4021946, arg1, 4021946, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_eabecf96[arg1] > -arg2 - 1:
        revert with 'NH{q', 17
    if sub_eabecf96[arg1] + arg2 < sub_eabecf96[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    sub_eabecf96[arg1] += arg2
    require msg.sender
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balancesOf[address(msg.sender)] > -arg2 - 1:
        revert with 'NH{q', 17
    if balancesOf[address(msg.sender)] + arg2 < balancesOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balancesOf[address(msg.sender)] += arg2
    emit Transfer(arg2, 0, msg.sender);
}



}
