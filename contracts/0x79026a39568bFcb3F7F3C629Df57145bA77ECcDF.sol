contract main {




// =====================  Runtime code  =====================


address aAddress;
uint256 vaultCount;
mapping of uint256 baseDebt;
mapping of struct vaultOwner;
mapping of uint256 vaultId;

function a() payable {
    return aAddress
}

function vaultOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vaultOwner[arg1].field_256
}

function baseDebt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return baseDebt[arg1]
}

function vaultCollateralBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vaultOwner[arg1].field_512
}

function vaults(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vaultOwner[arg1].field_0, 
           vaultOwner[arg1].field_256,
           vaultOwner[arg1].field_512,
           vaultOwner[arg1].field_768,
           vaultOwner[arg1].field_1024
}

function vaultCount() payable {
    return vaultCount
}

function vaultCollateralType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vaultOwner[arg1].field_0
}

function vaultId(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return vaultId[address(arg2)][address(arg1)]
}

function vaultBaseDebt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vaultOwner[arg1].field_768
}

function vaultExists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(vaultOwner[arg1].field_0)
}

function _fallback() payable {
    revert
}

function setCollateralBalance(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(aAddress)
    staticcall aAddress.0xf2f4eb26 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not VaultsCore'
    if not vaultOwner[arg1].field_0:
        revert with 0, 'Vault not found.'
    vaultOwner[arg1].field_512 = arg2
}

function createVault(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(aAddress)
    staticcall aAddress.0xf2f4eb26 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not VaultsCore'
    require arg1
    require arg2
    vaultCount++
    if not arg1:
        revert with 0, 'collateralType unknown'
    vaultOwner[stor1 + 1].field_0 = arg1
    vaultOwner[stor1 + 1].field_256 = arg2
    vaultOwner[stor1 + 1].field_512 = 0
    vaultOwner[stor1 + 1].field_768 = 0
    vaultOwner[stor1 + 1].field_1024 = block.timestamp
    vaultId[address(arg2)][address(arg1)] = vaultCount + 1
    return (vaultCount + 1)
}

function setBaseDebt(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(aAddress)
    staticcall aAddress.0xf2f4eb26 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not VaultsCore'
    if arg2 <= vaultOwner[arg1].field_768:
        if vaultOwner[arg1].field_768 - arg2 > baseDebt[stor3[arg1].field_0]:
            revert with 0, 'SafeMath: subtraction overflow'
        baseDebt[stor3[arg1].field_0] = baseDebt[stor3[arg1].field_0] - vaultOwner[arg1].field_768 + arg2
    else:
        if vaultOwner[arg1].field_768 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 - vaultOwner[arg1].field_768 + baseDebt[stor3[arg1].field_0] < baseDebt[stor3[arg1].field_0]:
            revert with 0, 'SafeMath: addition overflow'
        baseDebt[stor3[arg1].field_0] = arg2 - vaultOwner[arg1].field_768 + baseDebt[stor3[arg1].field_0]
    vaultOwner[arg1].field_768 = arg2
}

function vaultDebt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0xb8091c5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf2f4eb26 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).cumulativeRates(address arg1) with:
            gas gas_remaining wei
           args vaultOwner[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x1c3405e2 with:
            gas gas_remaining wei
           args vaultOwner[arg1].field_768, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function collateralDebt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xb8091c5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf2f4eb26 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).cumulativeRates(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x1c3405e2 with:
            gas gas_remaining wei
           args baseDebt[address(arg1)], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function debt() payable {
    mem[64] = 96
    mem[96] = 0x79502c5500000000000000000000000000000000000000000000000000000000
    require ext_code.size(aAddress)
    staticcall aAddress.mem[var76003 len 4] with:
            gas gas_remaining wei
           args mem[var76003 + 4 len var76004 - 4]
    mem[var76005] = ext_call.return_data[0]
    if ext_call.success:
        mem[64] = ceil32(return_data.size) + 96
        require var80002 - var80001 >= 32
        _234 = mem[var82002]
        require mem[var82002] == mem[var82002 + 12 len 20]
        require ext_code.size(mem[var82002 + 12 len 20])
        staticcall mem[var82002 + 12 len 20].0xd47e470d with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        s = _234
        s = _234
        s = var82002
        s = var82003
        s = var82005
        t = var82006
        while ext_call.success:
            _283 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > mem[_283]:
                return t
            require ext_code.size(aAddress)
            staticcall aAddress.0x79502c55 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _288 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_288] == mem[_288 + 12 len 20]
            require ext_code.size(mem[_288 + 12 len 20])
            staticcall mem[_288 + 12 len 20].0x4a6e0dd0 with:
                    gas gas_remaining wei
                   args s
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _293 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _294 = mem[64]
            require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
            mem[64] = mem[64] + 256
            require mem[_293] == mem[_293 + 12 len 20]
            mem[_294] = mem[_293]
            mem[_294 + 32] = mem[_293 + 32]
            mem[_294 + 64] = mem[_293 + 64]
            mem[_294 + 96] = mem[_293 + 96]
            mem[_294 + 128] = mem[_293 + 128]
            mem[_294 + 160] = mem[_293 + 160]
            mem[_294 + 192] = mem[_293 + 192]
            mem[_294 + 224] = mem[_293 + 224]
            _303 = mem[_294]
            require ext_code.size(aAddress)
            staticcall aAddress.0xb8091c5b with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _306 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _307 = mem[_306]
            require mem[_306] == mem[_306 + 12 len 20]
            mem[0] = address(_303)
            mem[32] = 2
            require ext_code.size(aAddress)
            staticcall aAddress.0xf2f4eb26 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _312 = mem[_311]
            require mem[_311] == mem[_311 + 12 len 20]
            mem[mem[64] + 4] = address(_303)
            require ext_code.size(address(_312))
            staticcall address(_312).cumulativeRates(address arg1) with:
                    gas gas_remaining wei
                   args address(_303)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _315 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _316 = mem[_315]
            mem[mem[64] + 4] = baseDebt[address(_303)]
            mem[mem[64] + 36] = _316
            require ext_code.size(address(_307))
            staticcall address(_307).0x1c3405e2 with:
                    gas gas_remaining wei
                   args baseDebt[address(_303)], _316
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _319 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _320 = mem[_319]
            if mem[_319] + t < t:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(aAddress)
            staticcall aAddress.0x79502c55 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _325 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _326 = mem[_325]
            require mem[_325] == mem[_325 + 12 len 20]
            mem[mem[64]] = 0xd47e470d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_326))
            staticcall address(_326).0xd47e470d with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 96]
            mem[mem[64]] = ext_call.return_data[0]
            s = _326
            s = _326
            s = _325
            s = _325 + return_data.size
            s = s + 1
            t = _320 + t
            continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
