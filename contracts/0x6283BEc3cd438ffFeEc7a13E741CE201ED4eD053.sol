contract main {




// =====================  Runtime code  =====================


address aAddress;
mapping of struct collateralConfigs;
mapping of uint256 collateralIds;
uint256 numCollateralConfigs;
uint256 minVotingPeriod;
uint256 maxVotingPeriod;
uint256 votingQuorum;
uint256 proposalThreshold;

function a() payable {
    return aAddress
}

function maxVotingPeriod() payable {
    return maxVotingPeriod
}

function collateralConfigs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > numCollateralConfigs:
        revert with 0, 'Invalid config id'
    return collateralConfigs[arg1].field_0, 
           collateralConfigs[arg1].field_256,
           collateralConfigs[arg1].field_512,
           collateralConfigs[arg1].field_768,
           collateralConfigs[arg1].field_1024,
           collateralConfigs[arg1].field_1280,
           collateralConfigs[arg1].field_1536,
           collateralConfigs[arg1].field_1792
}

function votingQuorum() payable {
    return votingQuorum
}

function collateralOriginationFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return collateralConfigs[stor2[address(arg1)]].field_1280
}

function collateralLiquidationFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return collateralConfigs[stor2[address(arg1)]].field_1792
}

function minVotingPeriod() payable {
    return minVotingPeriod
}

function collateralMinCollateralRatio(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return collateralConfigs[stor2[address(arg1)]].field_768
}

function collateralDebtLimit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return collateralConfigs[stor2[address(arg1)]].field_256
}

function collateralLiquidationBonus(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return collateralConfigs[stor2[address(arg1)]].field_1536
}

function proposalThreshold() payable {
    return proposalThreshold
}

function numCollateralConfigs() payable {
    return numCollateralConfigs
}

function collateralLiquidationRatio(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return collateralConfigs[stor2[address(arg1)]].field_512
}

function collateralIds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return collateralIds[arg1]
}

function collateralBorrowRate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return collateralConfigs[stor2[address(arg1)]].field_1024
}

function _fallback() payable {
    revert
}

function setMaxVotingPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    maxVotingPeriod = arg1
}

function setMinVotingPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    minVotingPeriod = arg1
}

function setVotingQuorum(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    require arg1 < 10^18
    votingQuorum = arg1
}

function setProposalThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    require arg1 < 10^18
    proposalThreshold = arg1
}

function setCollateralDebtLimit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    collateralConfigs[stor2[address(arg1)]].field_256 = arg2
    emit CollateralUpdated(collateralConfigs[stor2[address(arg1)]].field_256, collateralConfigs[stor2[address(arg1)]].field_512, collateralConfigs[stor2[address(arg1)]].field_768, collateralConfigs[stor2[address(arg1)]].field_1024, collateralConfigs[stor2[address(arg1)]].field_1280, collateralConfigs[stor2[address(arg1)]].field_1536, collateralConfigs[stor2[address(arg1)]].field_1792, arg1);
}

function setCollateralOriginationFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    collateralConfigs[stor2[address(arg1)]].field_1280 = arg2
    emit CollateralUpdated(collateralConfigs[stor2[address(arg1)]].field_256, collateralConfigs[stor2[address(arg1)]].field_512, collateralConfigs[stor2[address(arg1)]].field_768, collateralConfigs[stor2[address(arg1)]].field_1024, collateralConfigs[stor2[address(arg1)]].field_1280, collateralConfigs[stor2[address(arg1)]].field_1536, collateralConfigs[stor2[address(arg1)]].field_1792, arg1);
}

function setCollateralLiquidationBonus(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    collateralConfigs[stor2[address(arg1)]].field_1536 = arg2
    emit CollateralUpdated(collateralConfigs[stor2[address(arg1)]].field_256, collateralConfigs[stor2[address(arg1)]].field_512, collateralConfigs[stor2[address(arg1)]].field_768, collateralConfigs[stor2[address(arg1)]].field_1024, collateralConfigs[stor2[address(arg1)]].field_1280, collateralConfigs[stor2[address(arg1)]].field_1536, collateralConfigs[stor2[address(arg1)]].field_1792, arg1);
}

function setCollateralLiquidationFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    require arg2 < 10^18
    collateralConfigs[stor2[address(arg1)]].field_1792 = arg2
    emit CollateralUpdated(collateralConfigs[stor2[address(arg1)]].field_256, collateralConfigs[stor2[address(arg1)]].field_512, collateralConfigs[stor2[address(arg1)]].field_768, collateralConfigs[stor2[address(arg1)]].field_1024, collateralConfigs[stor2[address(arg1)]].field_1280, collateralConfigs[stor2[address(arg1)]].field_1536, collateralConfigs[stor2[address(arg1)]].field_1792, arg1);
}

function setCollateralLiquidationRatio(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    require arg2 <= collateralConfigs[stor2[address(arg1)]].field_768
    collateralConfigs[stor2[address(arg1)]].field_512 = arg2
    emit CollateralUpdated(collateralConfigs[stor2[address(arg1)]].field_256, collateralConfigs[stor2[address(arg1)]].field_512, collateralConfigs[stor2[address(arg1)]].field_768, collateralConfigs[stor2[address(arg1)]].field_1024, collateralConfigs[stor2[address(arg1)]].field_1280, collateralConfigs[stor2[address(arg1)]].field_1536, collateralConfigs[stor2[address(arg1)]].field_1792, arg1);
}

function setCollateralMinCollateralRatio(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    require arg2 >= collateralConfigs[stor2[address(arg1)]].field_512
    collateralConfigs[stor2[address(arg1)]].field_768 = arg2
    emit CollateralUpdated(collateralConfigs[stor2[address(arg1)]].field_256, collateralConfigs[stor2[address(arg1)]].field_512, collateralConfigs[stor2[address(arg1)]].field_768, collateralConfigs[stor2[address(arg1)]].field_1024, collateralConfigs[stor2[address(arg1)]].field_1280, collateralConfigs[stor2[address(arg1)]].field_1536, collateralConfigs[stor2[address(arg1)]].field_1792, arg1);
}

function removeCollateral(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    if not collateralIds[address(arg1)]:
        revert with 0, 'collateral does not exist'
    collateralConfigs[stor2[address(arg1)]].field_0 = collateralConfigs[stor3].field_0
    collateralConfigs[stor2[address(arg1)]].field_256 = collateralConfigs[stor3].field_256
    collateralConfigs[stor2[address(arg1)]].field_512 = collateralConfigs[stor3].field_512
    collateralConfigs[stor2[address(arg1)]].field_768 = collateralConfigs[stor3].field_768
    collateralConfigs[stor2[address(arg1)]].field_1024 = collateralConfigs[stor3].field_1024
    collateralConfigs[stor2[address(arg1)]].field_1280 = collateralConfigs[stor3].field_1280
    collateralConfigs[stor2[address(arg1)]].field_1536 = collateralConfigs[stor3].field_1536
    collateralConfigs[stor2[address(arg1)]].field_1792 = collateralConfigs[stor3].field_1792
    collateralIds[stor1[stor3].field_0] = collateralIds[address(arg1)]
    collateralConfigs[stor3].field_0 = 0
    collateralConfigs[stor3].field_256 = 0
    collateralConfigs[stor3].field_512 = 0
    collateralConfigs[stor3].field_768 = 0
    collateralConfigs[stor3].field_1024 = 0
    collateralConfigs[stor3].field_1280 = 0
    collateralConfigs[stor3].field_1536 = 0
    collateralConfigs[stor3].field_1792 = 0
    collateralIds[address(arg1)] = 0
    numCollateralConfigs--
    emit CollateralRemoved(arg1);
}

function setCollateralBorrowRate(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    require ext_code.size(aAddress)
    staticcall aAddress.0xf2f4eb26 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).state() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).refreshCollateral(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    collateralConfigs[stor2[address(arg1)]].field_1024 = arg2
    emit CollateralUpdated(collateralConfigs[stor2[address(arg1)]].field_256, collateralConfigs[stor2[address(arg1)]].field_512, collateralConfigs[stor2[address(arg1)]].field_768, collateralConfigs[stor2[address(arg1)]].field_1024, collateralConfigs[stor2[address(arg1)]].field_1280, collateralConfigs[stor2[address(arg1)]].field_1536, collateralConfigs[stor2[address(arg1)]].field_1792, arg1);
}

function setCollateralConfig(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) payable {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    require arg1
    require arg4 >= arg3
    require ext_code.size(aAddress)
    staticcall aAddress.0xf2f4eb26 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).state() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if collateralIds[address(arg1)]:
        call address(ext_call.return_data[0]).refreshCollateral(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        collateralConfigs[stor2[address(arg1)]].field_0 = arg1
        collateralConfigs[stor2[address(arg1)]].field_256 = arg2
        collateralConfigs[stor2[address(arg1)]].field_512 = arg3
        collateralConfigs[stor2[address(arg1)]].field_768 = arg4
        collateralConfigs[stor2[address(arg1)]].field_1024 = arg5
        collateralConfigs[stor2[address(arg1)]].field_1280 = arg6
        collateralConfigs[stor2[address(arg1)]].field_1536 = arg7
        collateralConfigs[stor2[address(arg1)]].field_1792 = arg8
    else:
        call address(ext_call.return_data[0]).initializeRates(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        numCollateralConfigs++
        collateralConfigs[stor3 + 1].field_0 = arg1
        collateralConfigs[stor3 + 1].field_256 = arg2
        collateralConfigs[stor3 + 1].field_512 = arg3
        collateralConfigs[stor3 + 1].field_768 = arg4
        collateralConfigs[stor3 + 1].field_1024 = arg5
        collateralConfigs[stor3 + 1].field_1280 = arg6
        collateralConfigs[stor3 + 1].field_1536 = arg7
        collateralConfigs[stor3 + 1].field_1792 = arg8
        collateralIds[address(arg1)] = numCollateralConfigs
    emit CollateralUpdated(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg1);
}



}
