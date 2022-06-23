contract main {




// =====================  Runtime code  =====================


const name = 'The Lord of Rarity Ring'

const decimals = 18

const version = '1'

const symbol = 'LRR'

const PERMIT_TYPEHASH = 0xea2aa0a1be11a07ed86d755c93467f4f82362b452371d1ba94d1715123511acb


address stor0;
mapping of uint256 wards;
uint256 totalSupply;
uint256 sub_a109f93b;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 nonces;
uint256 DOMAIN_SEPARATOR;

function totalSupply() payable {
    return totalSupply
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function sub_a109f93b(?) payable {
    return sub_a109f93b
}

function wards(address arg1) payable {
    require calldata.size - 4 >= 32
    return wards[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function rely(address arg1) payable {
    require calldata.size - 4 >= 32
    if wards[address(msg.sender)] != 1:
        revert with 0, 'LRR/not-authorized'
    wards[address(arg1)] = 1
    emit 0x0: 32, 224, call.data[0 len 224], msg.sender, arg1, cd[36]
}

function deny(address arg1) payable {
    require calldata.size - 4 >= 32
    if wards[address(msg.sender)] != 1:
        revert with 0, 'LRR/not-authorized'
    wards[address(arg1)] = 0
    emit 0x0: 32, 224, call.data[0 len 224], msg.sender, arg1, cd[36]
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if wards[address(msg.sender)] != 1:
        revert with 0, 'LRR/not-authorized'
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'LRR/insufficient-balance'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg2:
                revert with 0, 'LRR/insufficient-allowance'
            require allowance[address(arg1)][address(msg.sender)] - arg2 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require totalSupply - arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function move(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'LRR/insufficient-balance'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 'LRR/insufficient-allowance'
            require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
}

function pull(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'LRR/insufficient-balance'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg2:
                revert with 0, 'LRR/insufficient-allowance'
            require allowance[address(arg1)][address(msg.sender)] - arg2 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[address(msg.sender)] + arg2 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg2
    emit Transfer(arg2, arg1, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'LRR/insufficient-balance'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 'LRR/insufficient-allowance'
            require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function push(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'LRR/insufficient-balance'
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            if allowance[address(msg.sender)][address(msg.sender)] < arg2:
                revert with 0, 'LRR/insufficient-allowance'
            require allowance[address(msg.sender)][address(msg.sender)] - arg2 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'LRR/insufficient-balance'
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            if allowance[address(msg.sender)][address(msg.sender)] < arg2:
                revert with 0, 'LRR/insufficient-allowance'
            require allowance[address(msg.sender)][address(msg.sender)] - arg2 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) payable {
    require calldata.size - 4 >= 256
    if not arg1:
        revert with 0, 'LRR/invalid-address-0'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xea2aa0a1be11a07ed86d755c93467f4f82362b452371d1ba94d1715123511acb, address(arg1), address(arg2), arg3, arg4, arg5)), arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'LRR/invalid-permit'
    if arg4:
        if block.timestamp > arg4:
            revert with 0, 'LRR/permit-expired'
    nonces[address(arg1)]++
    if arg3 != nonces[address(arg1)]:
        revert with 0, 'LRR/invalid-nonce'
    if arg5:
        allowance[address(arg1)][address(arg2)] = -1
        emit Approval(-1, arg1, arg2);
    else:
        allowance[address(arg1)][address(arg2)] = 0
        emit Approval(0, arg1, arg2);
}

function burnRarityToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ext_code.hash(msg.sender) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if ext_code.hash(msg.sender):
            revert with 0, 'LRR/invalid-msg-sender'
    require ext_code.size(stor0)
    staticcall stor0.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'LRR/invalid-level'
    if ext_call.return_data[0] > 5:
        revert with 0, 'LRR/invalid-level'
    if ext_call.return_data[0] == 5:
        require sub_a109f93b - 32768 * 10^18 <= sub_a109f93b
        if sub_a109f93b - 32768 * 10^18 < 0:
            revert with 0, 'LRR/out-of-mint'
        require ext_code.size(stor0)
        call stor0.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, 1, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require balanceOf[address(msg.sender)] + 32768 * 10^18 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 32768 * 10^18
        require totalSupply + 32768 * 10^18 >= totalSupply
        totalSupply += 32768 * 10^18
        emit Transfer(32768 * 10^18, 0, msg.sender);
        require sub_a109f93b - 32768 * 10^18 <= sub_a109f93b
        sub_a109f93b -= 32768 * 10^18
    else:
        if ext_call.return_data[0] == 4:
            require sub_a109f93b - 1024 * 10^18 <= sub_a109f93b
            if sub_a109f93b - 1024 * 10^18 < 0:
                revert with 0, 'LRR/out-of-mint'
            require ext_code.size(stor0)
            call stor0.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, 1, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require balanceOf[address(msg.sender)] + 1024 * 10^18 >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 1024 * 10^18
            require totalSupply + 1024 * 10^18 >= totalSupply
            totalSupply += 1024 * 10^18
            emit Transfer(1024 * 10^18, 0, msg.sender);
            require sub_a109f93b - 1024 * 10^18 <= sub_a109f93b
            sub_a109f93b -= 1024 * 10^18
        else:
            if ext_call.return_data[0] == 3:
                require sub_a109f93b - 64 * 10^18 <= sub_a109f93b
                if sub_a109f93b - 64 * 10^18 < 0:
                    revert with 0, 'LRR/out-of-mint'
                require ext_code.size(stor0)
                call stor0.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, 1, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require balanceOf[address(msg.sender)] + 64 * 10^18 >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 64 * 10^18
                require totalSupply + 64 * 10^18 >= totalSupply
                totalSupply += 64 * 10^18
                emit Transfer(64 * 10^18, 0, msg.sender);
                require sub_a109f93b - 64 * 10^18 <= sub_a109f93b
                sub_a109f93b -= 64 * 10^18
            else:
                if ext_call.return_data[0] == 2:
                    require sub_a109f93b - 8 * 10^18 <= sub_a109f93b
                    if sub_a109f93b - 8 * 10^18 < 0:
                        revert with 0, 'LRR/out-of-mint'
                    require ext_code.size(stor0)
                    call stor0.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, 1, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require balanceOf[address(msg.sender)] + 8 * 10^18 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 8 * 10^18
                    require totalSupply + 8 * 10^18 >= totalSupply
                    totalSupply += 8 * 10^18
                    emit Transfer(8 * 10^18, 0, msg.sender);
                    require sub_a109f93b - 8 * 10^18 <= sub_a109f93b
                    sub_a109f93b -= 8 * 10^18
                else:
                    if ext_call.return_data[0] != 1:
                        require sub_a109f93b <= sub_a109f93b
                        if sub_a109f93b < 0:
                            revert with 0, 'LRR/out-of-mint'
                        require ext_code.size(stor0)
                        call stor0.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, 1, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        require totalSupply >= totalSupply
                        emit Transfer(0, 0, msg.sender);
                        require sub_a109f93b <= sub_a109f93b
                    else:
                        require sub_a109f93b - 10^18 <= sub_a109f93b
                        if sub_a109f93b - 10^18 < 0:
                            revert with 0, 'LRR/out-of-mint'
                        require ext_code.size(stor0)
                        call stor0.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, 1, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require balanceOf[address(msg.sender)] + 10^18 >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10^18
                        require totalSupply + 10^18 >= totalSupply
                        totalSupply += 10^18
                        emit Transfer(10^18, 0, msg.sender);
                        require sub_a109f93b - 10^18 <= sub_a109f93b
                        sub_a109f93b -= 10^18
}



}
