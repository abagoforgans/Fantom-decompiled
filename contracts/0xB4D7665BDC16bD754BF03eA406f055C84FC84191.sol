contract main {




// =====================  Runtime code  =====================


#
#  - purchase(address arg1, uint256 arg2)
#
const decimals = 18

const sub_5abd98db(?) = 1000

const sub_a7a8b168(?) = 20000

const sub_b8692033(?) = 10000

const sub_e1f1c4a7(?) = 10000

const MAX_PREMIUM = 1000


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint256 sub_5831a492;
uint256 premium;
uint256 redemptionFee;
address treasuryAddress;
mapping of struct markets;
array of address sub_b8104b9f;

function totalSupply() payable {
    return totalSupply
}

function redemptionFee() payable {
    return redemptionFee
}

function sub_5831a492(?) payable {
    return sub_5831a492
}

function treasury() payable {
    return treasuryAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function markets(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return markets[arg1].field_0, 
           markets[arg1].field_256,
           markets[arg1].field_512,
           markets[arg1].field_768,
           markets[arg1].field_1024,
           bool(markets[arg1].field_1184)
}

function sub_b8104b9f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_b8104b9f.length
    return sub_b8104b9f[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function premium() payable {
    return premium
}

function _fallback() payable {
    revert
}

function setPremium(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    premium = arg1
    return 1
}

function setRedemptionFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    redemptionFee = arg1
    return 1
}

function setBoundary(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > 20000:
        revert with 0, 'boundary too tight'
    if arg1 < 10000:
        revert with 0, 'boundary too loose'
    sub_5831a492 = arg1
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sync(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < markets[address(arg1)].field_256:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - markets[address(arg1)].field_256 <= 0:
        return 0
    if markets[address(arg1)].field_256 > -ext_call.return_data[0] + markets[address(arg1)].field_256 - 1:
        revert with 'NH{q', 17
    markets[address(arg1)].field_256 = ext_call.return_data[0]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function getBasePrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 'NH{q', 17
    if not -ext_call.return_data[31 len 1] + 18:
        if markets[address(arg1)].field_256 and 1 > -1 / markets[address(arg1)].field_256:
            revert with 'NH{q', 17
        if markets[address(arg1)].field_256 and 10^18 > -1 / markets[address(arg1)].field_256:
            revert with 'NH{q', 17
        if not markets[address(arg1)].field_0:
            revert with 'NH{q', 18
        return (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0)
    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
        if 10^(-ext_call.return_data[31 len 1] + 18) > -1:
            revert with 'NH{q', 17
        if markets[address(arg1)].field_256 and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / markets[address(arg1)].field_256:
            revert with 'NH{q', 17
        if markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) and 10^18 > -1 / markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18):
            revert with 'NH{q', 17
        if not markets[address(arg1)].field_0:
            revert with 'NH{q', 18
        return (10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0)
    s = 10
    t = 1
    idx = -ext_call.return_data[31 len 1] + 18
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if markets[address(arg1)].field_256 and t * s > -1 / markets[address(arg1)].field_256:
        revert with 'NH{q', 17
    if markets[address(arg1)].field_256 * t * s and 10^18 > -1 / markets[address(arg1)].field_256 * t * s:
        revert with 'NH{q', 17
    if not markets[address(arg1)].field_0:
        revert with 'NH{q', 18
    return (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0)
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function sub_bb6ec1c4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(address(arg1))
        call address(arg1).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > -1000000000000000001:
            revert with 'NH{q', 17
        totalSupply += 10^18
        if balanceOf[address(msg.sender)] > -1000000000000000001:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] += 10^18
        emit Transfer(10^18, 0, msg.sender);
        markets[address(arg1)].field_0 = 200000 * 10^18
        markets[address(arg1)].field_256 = 1
        markets[address(arg1)].field_512 = 10^18
        markets[address(arg1)].field_768 = 1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            require ext_code.size(address(arg1))
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10^uint8(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > -1000000000000000001:
                revert with 'NH{q', 17
            totalSupply += 10^18
            if balanceOf[address(msg.sender)] > -1000000000000000001:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] += 10^18
            emit Transfer(10^18, 0, msg.sender);
            markets[address(arg1)].field_0 = 200000 * 10^18
            markets[address(arg1)].field_256 = 10^uint8(ext_call.return_data[0])
            markets[address(arg1)].field_512 = 10^18
            markets[address(arg1)].field_768 = 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            require ext_code.size(address(arg1))
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), t * s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > -1000000000000000001:
                revert with 'NH{q', 17
            totalSupply += 10^18
            if balanceOf[address(msg.sender)] > -1000000000000000001:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] += 10^18
            emit Transfer(10^18, 0, msg.sender);
            markets[address(arg1)].field_0 = 200000 * 10^18
            markets[address(arg1)].field_256 = t * s
            markets[address(arg1)].field_512 = 10^18
            markets[address(arg1)].field_768 = t * s
    markets[address(arg1)].field_1024 = address(arg2)
    markets[address(arg1)].field_1184 = 1
    return 1
}

function calculatePayout(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 'NH{q', 17
    if not -ext_call.return_data[31 len 1] + 18:
        if markets[address(arg1)].field_256 and 1 > -1 / markets[address(arg1)].field_256:
            revert with 'NH{q', 17
        if markets[address(arg1)].field_256 and 10^18 > -1 / markets[address(arg1)].field_256:
            revert with 'NH{q', 17
        if not markets[address(arg1)].field_0:
            revert with 'NH{q', 18
        if 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 and arg2 > -1 / 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0:
            revert with 'NH{q', 17
        if 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18 and redemptionFee > -1 / 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18:
            revert with 'NH{q', 17
        if 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18 < 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000:
            revert with 'NH{q', 17
        return ((10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000))
    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
        if 10^(-ext_call.return_data[31 len 1] + 18) > -1:
            revert with 'NH{q', 17
        if markets[address(arg1)].field_256 and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / markets[address(arg1)].field_256:
            revert with 'NH{q', 17
        if markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) and 10^18 > -1 / markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18):
            revert with 'NH{q', 17
        if not markets[address(arg1)].field_0:
            revert with 'NH{q', 18
        if 10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0 and arg2 > -1 / 10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0:
            revert with 'NH{q', 17
        if 10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0 * arg2 / 10^18 and redemptionFee > -1 / 10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0 * arg2 / 10^18:
            revert with 'NH{q', 17
        if 10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0 * arg2 / 10^18 < 10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000:
            revert with 'NH{q', 17
        return ((10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000))
    s = 10
    t = 1
    idx = -ext_call.return_data[31 len 1] + 18
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if markets[address(arg1)].field_256 and t * s > -1 / markets[address(arg1)].field_256:
        revert with 'NH{q', 17
    if markets[address(arg1)].field_256 * t * s and 10^18 > -1 / markets[address(arg1)].field_256 * t * s:
        revert with 'NH{q', 17
    if not markets[address(arg1)].field_0:
        revert with 'NH{q', 18
    if 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 and arg2 > -1 / 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0:
        revert with 'NH{q', 17
    if 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18 and redemptionFee > -1 / 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18:
        revert with 'NH{q', 17
    if 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18 < 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000:
        revert with 'NH{q', 17
    return ((10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000))
}

function sub_72d7f82a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(markets[address(arg1)].field_1024)
        staticcall markets[address(arg1)].field_1024.0x3ddac953 with:
                gas gas_remaining wei
               args address(arg1), 1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            require ext_code.size(markets[address(arg1)].field_1024)
            staticcall markets[address(arg1)].field_1024.0x3ddac953 with:
                    gas gas_remaining wei
                   args address(arg1), 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            require ext_code.size(markets[address(arg1)].field_1024)
            staticcall markets[address(arg1)].field_1024.0x3ddac953 with:
                    gas gas_remaining wei
                   args address(arg1), t * s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 'NH{q', 17
    if not -ext_call.return_data[31 len 1] + 18:
        if markets[address(arg1)].field_256 and 1 > -1 / markets[address(arg1)].field_256:
            revert with 'NH{q', 17
        if markets[address(arg1)].field_256 and 10^18 > -1 / markets[address(arg1)].field_256:
            revert with 'NH{q', 17
        if not markets[address(arg1)].field_0:
            revert with 'NH{q', 18
        if Mask(144, 0, ext_call.return_data[0]) > -(10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        if Mask(144, 0, ext_call.return_data[0]) + (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0) and 10000 > -1 / Mask(144, 0, ext_call.return_data[0]) + (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0):
            revert with 'NH{q', 17
        if not sub_5831a492:
            revert with 'NH{q', 18
        return ((10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0) / sub_5831a492)
    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
        if 10^(-ext_call.return_data[31 len 1] + 18) > -1:
            revert with 'NH{q', 17
        if markets[address(arg1)].field_256 and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / markets[address(arg1)].field_256:
            revert with 'NH{q', 17
        if markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) and 10^18 > -1 / markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18):
            revert with 'NH{q', 17
        if not markets[address(arg1)].field_0:
            revert with 'NH{q', 18
        if Mask(144, 0, ext_call.return_data[0]) > -(10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        if Mask(144, 0, ext_call.return_data[0]) + (10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0) and 10000 > -1 / Mask(144, 0, ext_call.return_data[0]) + (10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0):
            revert with 'NH{q', 17
        if not sub_5831a492:
            revert with 'NH{q', 18
        return ((10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0) / sub_5831a492)
    s = 10
    t = 1
    idx = -ext_call.return_data[31 len 1] + 18
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if markets[address(arg1)].field_256 and t * s > -1 / markets[address(arg1)].field_256:
        revert with 'NH{q', 17
    if markets[address(arg1)].field_256 * t * s and 10^18 > -1 / markets[address(arg1)].field_256 * t * s:
        revert with 'NH{q', 17
    if not markets[address(arg1)].field_0:
        revert with 'NH{q', 18
    if Mask(144, 0, ext_call.return_data[0]) > -(10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0) - 1:
        revert with 'NH{q', 17
    if Mask(144, 0, ext_call.return_data[0]) + (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0) and 10000 > -1 / Mask(144, 0, ext_call.return_data[0]) + (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0):
        revert with 'NH{q', 17
    if not sub_5831a492:
        revert with 'NH{q', 18
    return ((10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0) / sub_5831a492)
}

function redeem(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not markets[address(arg1)].field_1184:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this market is not currently active'
    if arg2 <= 10000:
        revert with 0, 'order too small'
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 'NH{q', 17
    if not -ext_call.return_data[31 len 1] + 18:
        if markets[address(arg1)].field_256 and 1 > -1 / markets[address(arg1)].field_256:
            revert with 'NH{q', 17
        if markets[address(arg1)].field_256 and 10^18 > -1 / markets[address(arg1)].field_256:
            revert with 'NH{q', 17
        if not markets[address(arg1)].field_0:
            revert with 'NH{q', 18
        if 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 and arg2 > -1 / 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0:
            revert with 'NH{q', 17
        if 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18 and redemptionFee > -1 / 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18:
            revert with 'NH{q', 17
        if 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18 < 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000:
            revert with 'NH{q', 17
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'ERC20: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if totalSupply < arg2:
            revert with 'NH{q', 17
        totalSupply -= arg2
        emit Transfer(arg2, msg.sender, 0);
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if markets[address(arg1)].field_256 < (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000):
            revert with 'NH{q', 17
        markets[address(arg1)].field_256 = markets[address(arg1)].field_256 - (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18) + (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000)
        if markets[address(arg1)].field_0 < arg2:
            revert with 'NH{q', 17
        markets[address(arg1)].field_0 -= arg2
        if markets[address(arg1)].field_768 > -(10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18) + (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000) - 1:
            revert with 'NH{q', 17
        markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000)
        emit 0x2fc82dee: address(arg1), msg.sender, arg2, (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000)
    else:
        if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
            if 10^(-ext_call.return_data[31 len 1] + 18) > -1:
                revert with 'NH{q', 17
            if markets[address(arg1)].field_256 and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / markets[address(arg1)].field_256:
                revert with 'NH{q', 17
            if markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) and 10^18 > -1 / markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18):
                revert with 'NH{q', 17
            if not markets[address(arg1)].field_0:
                revert with 'NH{q', 18
            if 10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0 and arg2 > -1 / 10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0:
                revert with 'NH{q', 17
            if 10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0 * arg2 / 10^18 and redemptionFee > -1 / 10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0 * arg2 / 10^18:
                revert with 'NH{q', 17
            if 10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0 * arg2 / 10^18 < 10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000:
                revert with 'NH{q', 17
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'ERC20: burn amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if totalSupply < arg2:
                revert with 'NH{q', 17
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if markets[address(arg1)].field_256 < (10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000):
                revert with 'NH{q', 17
            markets[address(arg1)].field_256 = markets[address(arg1)].field_256 - (10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0 * arg2 / 10^18) + (10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000)
            if markets[address(arg1)].field_0 < arg2:
                revert with 'NH{q', 17
            markets[address(arg1)].field_0 -= arg2
            if markets[address(arg1)].field_768 > -(10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0 * arg2 / 10^18) + (10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000) - 1:
                revert with 'NH{q', 17
            markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + (10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000)
            emit 0x2fc82dee: address(arg1), msg.sender, arg2, (10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000)
        else:
            s = 10
            t = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if markets[address(arg1)].field_256 and t * s > -1 / markets[address(arg1)].field_256:
                revert with 'NH{q', 17
            if markets[address(arg1)].field_256 * t * s and 10^18 > -1 / markets[address(arg1)].field_256 * t * s:
                revert with 'NH{q', 17
            if not markets[address(arg1)].field_0:
                revert with 'NH{q', 18
            if 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 and arg2 > -1 / 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0:
                revert with 'NH{q', 17
            if 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18 and redemptionFee > -1 / 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18:
                revert with 'NH{q', 17
            if 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18 < 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000:
                revert with 'NH{q', 17
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'ERC20: burn amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if totalSupply < arg2:
                revert with 'NH{q', 17
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if markets[address(arg1)].field_256 < (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000):
                revert with 'NH{q', 17
            markets[address(arg1)].field_256 = markets[address(arg1)].field_256 - (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18) + (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000)
            if markets[address(arg1)].field_0 < arg2:
                revert with 'NH{q', 17
            markets[address(arg1)].field_0 -= arg2
            if markets[address(arg1)].field_768 > -(10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18) + (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000) - 1:
                revert with 'NH{q', 17
            markets[address(arg1)].field_768 = markets[address(arg1)].field_768 + (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000)
            emit 0x2fc82dee: address(arg1), msg.sender, arg2, (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18) - (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0 * arg2 / 10^18 * redemptionFee / 10000)
    return 1
}

function sub_ff3ab67b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(markets[address(arg1)].field_1024)
        staticcall markets[address(arg1)].field_1024.0x3ddac953 with:
                gas gas_remaining wei
               args address(arg1), 1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            require ext_code.size(markets[address(arg1)].field_1024)
            staticcall markets[address(arg1)].field_1024.0x3ddac953 with:
                    gas gas_remaining wei
                   args address(arg1), 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            require ext_code.size(markets[address(arg1)].field_1024)
            staticcall markets[address(arg1)].field_1024.0x3ddac953 with:
                    gas gas_remaining wei
                   args address(arg1), t * s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 'NH{q', 17
    if not -ext_call.return_data[31 len 1] + 18:
        if markets[address(arg1)].field_256 and 1 > -1 / markets[address(arg1)].field_256:
            revert with 'NH{q', 17
        if markets[address(arg1)].field_256 and 10^18 > -1 / markets[address(arg1)].field_256:
            revert with 'NH{q', 17
        if not markets[address(arg1)].field_0:
            revert with 'NH{q', 18
        if Mask(144, 0, ext_call.return_data[0]) > -(10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        if Mask(144, 0, ext_call.return_data[0]) + (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0) and 10000 > -1 / Mask(144, 0, ext_call.return_data[0]) + (10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0):
            revert with 'NH{q', 17
        if not sub_5831a492:
            revert with 'NH{q', 18
        if arg2 and premium > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 < arg2 * premium / 10000:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if not -ext_call.return_data[31 len 1] + 18:
            if arg2 - (arg2 * premium / 10000) and 1 > -1 / arg2 - (arg2 * premium / 10000):
                revert with 'NH{q', 17
            if arg2 - (arg2 * premium / 10000) and 10^18 > -1 / arg2 - (arg2 * premium / 10000):
                revert with 'NH{q', 17
            if not (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0) / sub_5831a492:
                revert with 'NH{q', 18
            return (10^18 * arg2) - (10^18 * arg2 * premium / 10000) / (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0) / sub_5831a492, 
                   arg2 - (arg2 * premium / 10000),
                   arg2 * premium / 10000
        if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
            if 10^(-ext_call.return_data[31 len 1] + 18) > -1:
                revert with 'NH{q', 17
            if arg2 - (arg2 * premium / 10000) and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / arg2 - (arg2 * premium / 10000):
                revert with 'NH{q', 17
            if (arg2 * 10^(-ext_call.return_data[31 len 1] + 18)) - (arg2 * premium / 10000 * 10^(-ext_call.return_data[31 len 1] + 18)) and 10^18 > -1 / (arg2 * 10^(-ext_call.return_data[31 len 1] + 18)) - (arg2 * premium / 10000 * 10^(-ext_call.return_data[31 len 1] + 18)):
                revert with 'NH{q', 17
            if not (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0) / sub_5831a492:
                revert with 'NH{q', 18
            return (10^18 * arg2 * 10^(-ext_call.return_data[31 len 1] + 18)) - (10^18 * arg2 * premium / 10000 * 10^(-ext_call.return_data[31 len 1] + 18)) / (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0) / sub_5831a492, 
                   arg2 - (arg2 * premium / 10000),
                   arg2 * premium / 10000
        s = 10
        t = 1
        idx = -ext_call.return_data[31 len 1] + 18
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if arg2 - (arg2 * premium / 10000) and t * s > -1 / arg2 - (arg2 * premium / 10000):
            revert with 'NH{q', 17
        if (arg2 * t * s) - (arg2 * premium / 10000 * t * s) and 10^18 > -1 / (arg2 * t * s) - (arg2 * premium / 10000 * t * s):
            revert with 'NH{q', 17
        if not (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0) / sub_5831a492:
            revert with 'NH{q', 18
        return (10^18 * arg2 * t * s) - (10^18 * arg2 * premium / 10000 * t * s) / (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 / markets[address(arg1)].field_0) / sub_5831a492, 
               arg2 - (arg2 * premium / 10000),
               arg2 * premium / 10000
    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
        if 10^(-ext_call.return_data[31 len 1] + 18) > -1:
            revert with 'NH{q', 17
        if markets[address(arg1)].field_256 and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / markets[address(arg1)].field_256:
            revert with 'NH{q', 17
        if markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) and 10^18 > -1 / markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18):
            revert with 'NH{q', 17
        if not markets[address(arg1)].field_0:
            revert with 'NH{q', 18
        if Mask(144, 0, ext_call.return_data[0]) > -(10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        if Mask(144, 0, ext_call.return_data[0]) + (10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0) and 10000 > -1 / Mask(144, 0, ext_call.return_data[0]) + (10^18 * markets[address(arg1)].field_256 * 10^(-ext_call.return_data[31 len 1] + 18) / markets[address(arg1)].field_0):
            revert with 'NH{q', 17
        if not sub_5831a492:
            revert with 'NH{q', 18
        if arg2 and premium > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 < arg2 * premium / 10000:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if not -ext_call.return_data[31 len 1] + 18:
            if arg2 - (arg2 * premium / 10000) and 1 > -1 / arg2 - (arg2 * premium / 10000):
                revert with 'NH{q', 17
            if arg2 - (arg2 * premium / 10000) and 10^18 > -1 / arg2 - (arg2 * premium / 10000):
                revert with 'NH{q', 17
            if not (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0) / sub_5831a492:
                revert with 'NH{q', 18
            return (10^18 * arg2) - (10^18 * arg2 * premium / 10000) / (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0) / sub_5831a492, 
                   arg2 - (arg2 * premium / 10000),
                   arg2 * premium / 10000
        if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
            if 10^(-ext_call.return_data[31 len 1] + 18) > -1:
                revert with 'NH{q', 17
            if arg2 - (arg2 * premium / 10000) and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / arg2 - (arg2 * premium / 10000):
                revert with 'NH{q', 17
            if (arg2 * 10^(-ext_call.return_data[31 len 1] + 18)) - (arg2 * premium / 10000 * 10^(-ext_call.return_data[31 len 1] + 18)) and 10^18 > -1 / (arg2 * 10^(-ext_call.return_data[31 len 1] + 18)) - (arg2 * premium / 10000 * 10^(-ext_call.return_data[31 len 1] + 18)):
                revert with 'NH{q', 17
            if not (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0) / sub_5831a492:
                revert with 'NH{q', 18
            return (10^18 * arg2 * 10^(-ext_call.return_data[31 len 1] + 18)) - (10^18 * arg2 * premium / 10000 * 10^(-ext_call.return_data[31 len 1] + 18)) / (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0) / sub_5831a492, 
                   arg2 - (arg2 * premium / 10000),
                   arg2 * premium / 10000
        s = 10
        t = 1
        idx = -ext_call.return_data[31 len 1] + 18
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if arg2 - (arg2 * premium / 10000) and t * s > -1 / arg2 - (arg2 * premium / 10000):
            revert with 'NH{q', 17
        if (arg2 * t * s) - (arg2 * premium / 10000 * t * s) and 10^18 > -1 / (arg2 * t * s) - (arg2 * premium / 10000 * t * s):
            revert with 'NH{q', 17
        if not (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0) / sub_5831a492:
            revert with 'NH{q', 18
        return (10^18 * arg2 * t * s) - (10^18 * arg2 * premium / 10000 * t * s) / (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 * 10^(-uint8(ext_call.return_data[0]) + 18) / markets[address(arg1)].field_0) / sub_5831a492, 
               arg2 - (arg2 * premium / 10000),
               arg2 * premium / 10000
    s = 10
    t = 1
    idx = -ext_call.return_data[31 len 1] + 18
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if markets[address(arg1)].field_256 and t * s > -1 / markets[address(arg1)].field_256:
        revert with 'NH{q', 17
    if markets[address(arg1)].field_256 * t * s and 10^18 > -1 / markets[address(arg1)].field_256 * t * s:
        revert with 'NH{q', 17
    if not markets[address(arg1)].field_0:
        revert with 'NH{q', 18
    if Mask(144, 0, ext_call.return_data[0]) > -(10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0) - 1:
        revert with 'NH{q', 17
    if Mask(144, 0, ext_call.return_data[0]) + (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0) and 10000 > -1 / Mask(144, 0, ext_call.return_data[0]) + (10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0):
        revert with 'NH{q', 17
    if not sub_5831a492:
        revert with 'NH{q', 18
    if arg2 and premium > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 < arg2 * premium / 10000:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 'NH{q', 17
    if not -ext_call.return_data[31 len 1] + 18:
        if arg2 - (arg2 * premium / 10000) and 1 > -1 / arg2 - (arg2 * premium / 10000):
            revert with 'NH{q', 17
        if arg2 - (arg2 * premium / 10000) and 10^18 > -1 / arg2 - (arg2 * premium / 10000):
            revert with 'NH{q', 17
        if not (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0) / sub_5831a492:
            revert with 'NH{q', 18
        return (10^18 * arg2) - (10^18 * arg2 * premium / 10000) / (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0) / sub_5831a492, 
               arg2 - (arg2 * premium / 10000),
               arg2 * premium / 10000
    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
        if 10^(-ext_call.return_data[31 len 1] + 18) > -1:
            revert with 'NH{q', 17
        if arg2 - (arg2 * premium / 10000) and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / arg2 - (arg2 * premium / 10000):
            revert with 'NH{q', 17
        if (arg2 * 10^(-ext_call.return_data[31 len 1] + 18)) - (arg2 * premium / 10000 * 10^(-ext_call.return_data[31 len 1] + 18)) and 10^18 > -1 / (arg2 * 10^(-ext_call.return_data[31 len 1] + 18)) - (arg2 * premium / 10000 * 10^(-ext_call.return_data[31 len 1] + 18)):
            revert with 'NH{q', 17
        if not (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0) / sub_5831a492:
            revert with 'NH{q', 18
        return (10^18 * arg2 * 10^(-ext_call.return_data[31 len 1] + 18)) - (10^18 * arg2 * premium / 10000 * 10^(-ext_call.return_data[31 len 1] + 18)) / (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0) / sub_5831a492, 
               arg2 - (arg2 * premium / 10000),
               arg2 * premium / 10000
    u = 10
    v = 1
    idx = -ext_call.return_data[31 len 1] + 18
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = v * u
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    if arg2 - (arg2 * premium / 10000) and v * u > -1 / arg2 - (arg2 * premium / 10000):
        revert with 'NH{q', 17
    if (arg2 * v * u) - (arg2 * premium / 10000 * v * u) and 10^18 > -1 / (arg2 * v * u) - (arg2 * premium / 10000 * v * u):
        revert with 'NH{q', 17
    if not (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0) / sub_5831a492:
        revert with 'NH{q', 18
    return (10^18 * arg2 * v * u) - (10^18 * arg2 * premium / 10000 * v * u) / (10000 * Mask(144, 0, ext_call.return_data[0])) + (10000 * 10^18 * markets[address(arg1)].field_256 * t * s / markets[address(arg1)].field_0) / sub_5831a492, 
           arg2 - (arg2 * premium / 10000),
           arg2 * premium / 10000
}



}
