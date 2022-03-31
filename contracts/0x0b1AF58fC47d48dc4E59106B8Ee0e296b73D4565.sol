contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - tend()
#  - harvest()
#  - migrate(address arg1)
#
const name = '', 0

const apiVersion = '', 0

const delegatedAssets = 0

const sub_a83622e0(?) = 10000


array of uint256 metadataURI;
address vaultAddress;
address strategistAddress;
address rewardsAddress;
address keeperAddress;
address wantAddress;
uint256 minReportDelay;
uint256 maxReportDelay;
uint256 profitFactor;
uint256 debtThreshold;
uint8 emergencyExit;
uint256 MAX_RATIO;
uint256 sub_f8690117;
address sub_d08080eeAddress;
address sub_3953a576Address;
address sub_695e3e4aAddress;
address uniAddress;
address sub_094e23f9Address;

function metadataURI() payable {
    return metadataURI[0 len metadataURI.length]
}

function sub_094e23f9(?) payable {
    return sub_094e23f9Address
}

function debtThreshold() payable {
    return debtThreshold
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function maxReportDelay() payable {
    return maxReportDelay
}

function sub_3953a576(?) payable {
    return sub_3953a576Address
}

function emergencyExit() payable {
    return bool(emergencyExit)
}

function MAX_RATIO() payable {
    return MAX_RATIO
}

function sub_695e3e4a(?) payable {
    return sub_695e3e4aAddress
}

function profitFactor() payable {
    return profitFactor
}

function minReportDelay() payable {
    return minReportDelay
}

function rewards() payable {
    return rewardsAddress
}

function keeper() payable {
    return keeperAddress
}

function sub_d08080ee(?) payable {
    return sub_d08080eeAddress
}

function uni() payable {
    return uniAddress
}

function sub_f8690117(?) payable {
    return sub_f8690117
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_148e11cc(?) payable {
    require ext_code.size(sub_3953a576Address)
    staticcall sub_3953a576Address.0xf2392c8d with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_9922c97c(?) payable {
    require ext_code.size(sub_094e23f9Address)
    staticcall sub_094e23f9Address.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTargetRatio() payable {
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x59eb3570 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if 11000 * ext_call.return_data[0] / ext_call.return_data[0] != 11000:
        revert with 0, 'SafeMath: multiplication overflow'
    return (11000 * ext_call.return_data[0] / 10000)
}

function setProfitFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    profitFactor = arg1
    emit UpdatedProfitFactor(arg1);
}

function setDebtThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    debtThreshold = arg1
    emit UpdatedDebtThreshold(arg1);
}

function setMinReportDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    minReportDelay = arg1
    emit UpdatedMinReportDelay(arg1);
}

function setMaxReportDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    maxReportDelay = arg1
    emit UpdatedMaxReportDelay(arg1);
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    require arg1
    keeperAddress = arg1
    emit UpdatedKeeper(arg1);
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    require arg1
    strategistAddress = arg1
    emit UpdatedStrategist(arg1);
}

function sub_6687500e(?) payable {
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfDebt() payable {
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), sub_094e23f9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setEmergencyExit() payable {
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    emergencyExit = 1
    require ext_code.size(vaultAddress)
    call vaultAddress.revokeStrategy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EmergencyExitEnabled()
}

function sub_16514828(?) payable {
    require ext_code.size(sub_695e3e4aAddress)
    staticcall sub_695e3e4aAddress.pricePerShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_695e3e4aAddress)
    staticcall sub_695e3e4aAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function setRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    require arg1
    require ext_code.size(vaultAddress)
    call vaultAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args rewardsAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    rewardsAddress = arg1
    require ext_code.size(vaultAddress)
    call vaultAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit UpdatedRewards(arg1);
}

function setMetadataURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    metadataURI.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        metadataURI[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while metadataURI.length + 31 / 32 > idx:
        metadataURI[idx] = 0
        idx = idx + 1
        continue 
    emit UpdatedMetadataURI(Array(len=arg1.length, data=arg1[all]));
}

function sub_3030170a(?) payable {
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), sub_094e23f9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.getPrice(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0])
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_5fefa3e1(?) payable {
    require ext_code.size(sub_695e3e4aAddress)
    staticcall sub_695e3e4aAddress.pricePerShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_695e3e4aAddress)
    staticcall sub_695e3e4aAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        return 0
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.getPrice(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0])
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0])
}

function sub_43634cc1(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.getPrice(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x59eb3570 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if 11000 * ext_call.return_data[0] / ext_call.return_data[0] != 11000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 11000 * ext_call.return_data[0] / 10000:
            revert with 0, 'SafeMath: division by zero', 0
        if 10^18 * 11000 * ext_call.return_data[0] / 10000 / 11000 * ext_call.return_data[0] / 10000 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000)
    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x59eb3570 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if 11000 * ext_call.return_data[0] / ext_call.return_data[0] != 11000:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 11000 * ext_call.return_data[0] / 10000:
        revert with 0, 'SafeMath: division by zero', 0
    if 10^18 * 11000 * ext_call.return_data[0] / 10000 / 11000 * ext_call.return_data[0] / 10000 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000:
        revert with 0, 'SafeMath: division by zero', 0
    return (ext_call.return_data[0] * arg1 / 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000)
}

function getCurrentRatio() payable {
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), sub_094e23f9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return MAX_RATIO
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.getPrice(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0] / 10^18)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 != ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18)
}

function sub_13350fce(?) payable {
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.getPrice(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x59eb3570 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if 11000 * ext_call.return_data[0] / ext_call.return_data[0] != 11000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 11000 * ext_call.return_data[0] / 10000:
            revert with 0, 'SafeMath: division by zero', 0
        if 10^18 * 11000 * ext_call.return_data[0] / 10000 / 11000 * ext_call.return_data[0] / 10000 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x59eb3570 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if 11000 * ext_call.return_data[0] / ext_call.return_data[0] != 11000:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 11000 * ext_call.return_data[0] / 10000:
        revert with 0, 'SafeMath: division by zero', 0
    if 10^18 * 11000 * ext_call.return_data[0] / 10000 / 11000 * ext_call.return_data[0] / 10000 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000:
        revert with 0, 'SafeMath: division by zero', 0
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000)
}

function sweep(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.governance() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!authorized'
    if wantAddress == arg1:
        revert with 0, '!want'
    if vaultAddress == arg1:
        revert with 0, '!shares'
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = sub_094e23f9Address
    mem[ceil32(return_data.size) + 160] = sub_695e3e4aAddress
    idx = 0
    while idx < 2:
        require idx < 2
        if arg1 == mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
            revert with 0, '!protected'
        idx = idx + 1
        continue 
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.governance() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 32]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 192] = (5 * ceil32(return_data.size)) + 68
    mem[(4 * ceil32(return_data.size)) + 228 len 28] = address(ext_call.return_data[0]) << 64
    mem[(4 * ceil32(return_data.size)) + 224 len 4] = transfer(address rg1, uint256 rg2)
    mem[(4 * ceil32(return_data.size)) + 292] = 32
    mem[(4 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 356 len floor32((5 * ceil32(return_data.size)) + 99)] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
    if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
        mem[(10 * ceil32(return_data.size)) + 424] = 0
    call arg1.mem[(4 * ceil32(return_data.size)) + 356 len 4] with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 360 len (13 * ceil32(return_data.size)) + 64]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 388] == bool(mem[(4 * ceil32(return_data.size)) + 388])
            if not mem[(4 * ceil32(return_data.size)) + 388]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function tendTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x59eb3570 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x3ec357f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), sub_094e23f9Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return (MAX_RATIO < 0)
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.getPrice(address rg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / ext_call.return_data[0] / 10^18 < 0)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 != ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 < 0)
    if 11000 * ext_call.return_data[0] / ext_call.return_data[0] != 11000:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), sub_094e23f9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return (MAX_RATIO < 11000 * ext_call.return_data[0] / 10000)
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.getPrice(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0] / 10^18 < 11000 * ext_call.return_data[0] / 10000)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 != ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 < 11000 * ext_call.return_data[0] / 10000)
}

function sub_c603d617(?) payable {
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x59eb3570 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x3ec357f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), sub_094e23f9Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if MAX_RATIO <= 0:
                return 0
        else:
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.getPrice(address rg1) with:
                    gas gas_remaining wei
                   args wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ext_call.return_data[0] / 10^18 <= 0:
                    return 0
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 != ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 <= 0:
                    return 0
    else:
        if 11000 * ext_call.return_data[0] / ext_call.return_data[0] != 11000:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x3ec357f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), sub_094e23f9Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if MAX_RATIO <= 11000 * ext_call.return_data[0] / 10000:
                return 0
        else:
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.getPrice(address rg1) with:
                    gas gas_remaining wei
                   args wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ext_call.return_data[0] / 10^18 <= 11000 * ext_call.return_data[0] / 10000:
                    return 0
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / 10000 != ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 <= 11000 * ext_call.return_data[0] / 10000:
                    return 0
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.getPrice(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x59eb3570 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if 11000 * ext_call.return_data[0] / ext_call.return_data[0] != 11000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 11000 * ext_call.return_data[0] / 10000:
            revert with 0, 'SafeMath: division by zero', 0
        if 10^18 * 11000 * ext_call.return_data[0] / 10000 / 11000 * ext_call.return_data[0] / 10000 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x3ec357f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), sub_094e23f9Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0 / 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (0 / 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000) - ext_call.return_data[0] <= sub_f8690117:
            return 0
        return ((0 / 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000) - ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x59eb3570 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if 11000 * ext_call.return_data[0] / ext_call.return_data[0] != 11000:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 11000 * ext_call.return_data[0] / 10000:
        revert with 0, 'SafeMath: division by zero', 0
    if 10^18 * 11000 * ext_call.return_data[0] / 10000 / 11000 * ext_call.return_data[0] / 10000 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), sub_094e23f9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000) - ext_call.return_data[0] <= sub_f8690117:
        return 0
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 11000 * ext_call.return_data[0] / 10000 / 10000) - ext_call.return_data[0])
}

function estimatedTotalAssets() payable {
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), sub_094e23f9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_695e3e4aAddress)
        staticcall sub_695e3e4aAddress.pricePerShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_695e3e4aAddress)
        staticcall sub_695e3e4aAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (3 * ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (3 * ext_call.return_data[0])
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.getPrice(address rg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]))
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]))
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.getPrice(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(sub_695e3e4aAddress)
        staticcall sub_695e3e4aAddress.pricePerShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_695e3e4aAddress)
        staticcall sub_695e3e4aAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]))
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.getPrice(address rg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] > (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (3 * ext_call.return_data[0])
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / ext_call.return_data[0] > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]))
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(sub_695e3e4aAddress)
    staticcall sub_695e3e4aAddress.pricePerShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_695e3e4aAddress)
    staticcall sub_695e3e4aAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]))
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.getPrice(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]))
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(sub_3953a576Address)
    staticcall sub_3953a576Address.0xf2392c8d with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow', 0
    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]))
}

function isActive() payable {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 384 <= test266151307())
    if ext_call.return_data[64] > 0:
        return (ext_call.return_data[64] > 0)
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), sub_094e23f9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_695e3e4aAddress)
        staticcall sub_695e3e4aAddress.pricePerShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_695e3e4aAddress)
        staticcall sub_695e3e4aAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (3 * ext_call.return_data[0] > 0)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (3 * ext_call.return_data[0] > 0)
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.getPrice(address rg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) > 0)
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) > 0)
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.getPrice(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(sub_695e3e4aAddress)
        staticcall sub_695e3e4aAddress.pricePerShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_695e3e4aAddress)
        staticcall sub_695e3e4aAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) > 0)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) > 0)
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.getPrice(address rg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] > (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (3 * ext_call.return_data[0] > 0)
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / ext_call.return_data[0] > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) > 0)
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(sub_695e3e4aAddress)
    staticcall sub_695e3e4aAddress.pricePerShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_695e3e4aAddress)
    staticcall sub_695e3e4aAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) > 0)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) > 0)
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.getPrice(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) > 0)
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(sub_3953a576Address)
    staticcall sub_3953a576Address.0xf2392c8d with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow', 0
    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) > 0)
}

function harvestTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 672 <= test266151307())
    if 0 == ext_call.return_data[32]:
        return 0
    if ext_call.return_data[160] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - ext_call.return_data[160] < minReportDelay:
        return 0
    if ext_call.return_data[160] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - ext_call.return_data[160] >= maxReportDelay:
        return 1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.debtOutstanding() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > debtThreshold:
        return 1
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), sub_094e23f9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_695e3e4aAddress)
        staticcall sub_695e3e4aAddress.pricePerShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_695e3e4aAddress)
        staticcall sub_695e3e4aAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + (3 * ext_call.return_data[0]) < ext_call.return_data[192]:
                return 1
            if 3 * ext_call.return_data[0] <= ext_call.return_data[192]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    return (0 < ext_call.return_data[0])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < ext_call.return_data[0])
            if ext_call.return_data[192] > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (4 * ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                return (0 < (4 * ext_call.return_data[0]) - ext_call.return_data[192])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < (4 * ext_call.return_data[0]) - ext_call.return_data[192])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + (3 * ext_call.return_data[0]) < ext_call.return_data[192]:
                return 1
            if 3 * ext_call.return_data[0] <= ext_call.return_data[192]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    return (0 < ext_call.return_data[0])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < ext_call.return_data[0])
            if ext_call.return_data[192] > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (4 * ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                return (0 < (4 * ext_call.return_data[0]) - ext_call.return_data[192])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < (4 * ext_call.return_data[0]) - ext_call.return_data[192])
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.getPrice(address rg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) < ext_call.return_data[192]:
                return 1
            if (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) <= ext_call.return_data[192]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    return (0 < ext_call.return_data[0])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < ext_call.return_data[0])
            if ext_call.return_data[192] > (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                return (0 < (0 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - ext_call.return_data[192])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < (0 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - ext_call.return_data[192])
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if debtThreshold < 0:
            revert with 0, 'SafeMath: addition overflow'
        if debtThreshold + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) < ext_call.return_data[192]:
            return 1
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) <= ext_call.return_data[192]:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                return (0 < ext_call.return_data[0])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < ext_call.return_data[0])
        if ext_call.return_data[192] > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.creditAvailable() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not profitFactor:
            return (0 < (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - ext_call.return_data[192])
        if arg1 * profitFactor / profitFactor != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * profitFactor < (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - ext_call.return_data[192])
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.getPrice(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(sub_695e3e4aAddress)
        staticcall sub_695e3e4aAddress.pricePerShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_695e3e4aAddress)
        staticcall sub_695e3e4aAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + (3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) < ext_call.return_data[192]:
                return 1
            if (3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= ext_call.return_data[192]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    return (0 < ext_call.return_data[0])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < ext_call.return_data[0])
            if ext_call.return_data[192] > (3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (4 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                return (0 < (4 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) - ext_call.return_data[192])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < (4 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) - ext_call.return_data[192])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + (3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) < ext_call.return_data[192]:
                return 1
            if (3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= ext_call.return_data[192]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    return (0 < ext_call.return_data[0])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < ext_call.return_data[0])
            if ext_call.return_data[192] > (3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (4 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                return (0 < (4 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) - ext_call.return_data[192])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < (4 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) - ext_call.return_data[192])
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.getPrice(address rg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(sub_3953a576Address)
            staticcall sub_3953a576Address.0xf2392c8d with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d08080eeAddress)
            staticcall sub_d08080eeAddress.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / ext_call.return_data[0] > (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + (3 * ext_call.return_data[0]) < ext_call.return_data[192]:
                return 1
            if 3 * ext_call.return_data[0] <= ext_call.return_data[192]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    return (0 < ext_call.return_data[0])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < ext_call.return_data[0])
            if ext_call.return_data[192] > 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (4 * ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                return (0 < (4 * ext_call.return_data[0]) - ext_call.return_data[192])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < (4 * ext_call.return_data[0]) - ext_call.return_data[192])
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / ext_call.return_data[0] > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if debtThreshold < 0:
            revert with 0, 'SafeMath: addition overflow'
        if debtThreshold + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) < ext_call.return_data[192]:
            return 1
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= ext_call.return_data[192]:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                return (0 < ext_call.return_data[0])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < ext_call.return_data[0])
        if ext_call.return_data[192] > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.creditAvailable() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not profitFactor:
            return (0 < (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) - ext_call.return_data[192])
        if arg1 * profitFactor / profitFactor != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * profitFactor < (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - (0 / ext_call.return_data[0]) - ext_call.return_data[192])
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(sub_695e3e4aAddress)
    staticcall sub_695e3e4aAddress.pricePerShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_695e3e4aAddress)
    staticcall sub_695e3e4aAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if debtThreshold < 0:
            revert with 0, 'SafeMath: addition overflow'
        if debtThreshold + (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) < ext_call.return_data[192]:
            return 1
        if (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) <= ext_call.return_data[192]:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                return (0 < ext_call.return_data[0])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < ext_call.return_data[0])
        if ext_call.return_data[192] > (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.creditAvailable() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (4 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not profitFactor:
            return (0 < (4 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[192])
        if arg1 * profitFactor / profitFactor != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * profitFactor < (4 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[192])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if debtThreshold < 0:
            revert with 0, 'SafeMath: addition overflow'
        if debtThreshold + (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) < ext_call.return_data[192]:
            return 1
        if (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) <= ext_call.return_data[192]:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                return (0 < ext_call.return_data[0])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < ext_call.return_data[0])
        if ext_call.return_data[192] > (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.creditAvailable() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (4 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not profitFactor:
            return (0 < (4 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[192])
        if arg1 * profitFactor / profitFactor != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * profitFactor < (4 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[192])
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.getPrice(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(sub_3953a576Address)
        staticcall sub_3953a576Address.0xf2392c8d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_d08080eeAddress)
        staticcall sub_d08080eeAddress.0x73c9641d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if debtThreshold < 0:
            revert with 0, 'SafeMath: addition overflow'
        if debtThreshold + (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) < ext_call.return_data[192]:
            return 1
        if (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) <= ext_call.return_data[192]:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                return (0 < ext_call.return_data[0])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < ext_call.return_data[0])
        if ext_call.return_data[192] > (0 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.creditAvailable() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (0 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not profitFactor:
            return (0 < (0 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[192])
        if arg1 * profitFactor / profitFactor != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * profitFactor < (0 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[192])
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(sub_3953a576Address)
    staticcall sub_3953a576Address.0xf2392c8d with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d08080eeAddress)
    staticcall sub_d08080eeAddress.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if debtThreshold < 0:
        revert with 0, 'SafeMath: addition overflow'
    if debtThreshold + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) < ext_call.return_data[192]:
        return 1
    if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) <= ext_call.return_data[192]:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.creditAvailable() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not profitFactor:
            return (0 < ext_call.return_data[0])
        if arg1 * profitFactor / profitFactor != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * profitFactor < ext_call.return_data[0])
    if ext_call.return_data[192] > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (3 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.creditAvailable() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not profitFactor:
        return (0 < (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[192])
    if arg1 * profitFactor / profitFactor != arg1:
        revert with 0, 'SafeMath: multiplication overflow'
    return (arg1 * profitFactor < (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) + (4 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[192])
}



}
