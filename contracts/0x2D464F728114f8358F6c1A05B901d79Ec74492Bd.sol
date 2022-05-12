contract main {




// =====================  Runtime code  =====================


#
#  - swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4)
#
const name = 'Uniswap V2'

const decimals = 18

const symbol = 'UNI-V2'

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9

const MINIMUM_LIQUIDITY = 1000


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 DOMAIN_SEPARATOR;
mapping of uint256 nonces;
address factoryAddress;
address pairAddress;
address token0Address;
address token1Address;
uint32 stor9; offset 224
uint256 price0CumulativeLast;
uint256 price1CumulativeLast;
uint256 kLast;
uint256 stor13;

function token0() payable {
    return token0Address
}

function totalSupply() payable {
    return totalSupply
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function price0CumulativeLast() payable {
    return price0CumulativeLast
}

function price1CumulativeLast() payable {
    return price1CumulativeLast
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function kLast() payable {
    return kLast
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function pairAddress() payable {
    return pairAddress
}

function factory() payable {
    return factoryAddress
}

function token1() payable {
    return token1Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
}

function sync() payable {
    if stor13 != 1:
        revert with 0, 'UniswapV2: LOCKED'
    stor13 = 0
    stor13 = 1
}

function skim(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor13 != 1:
        revert with 0, 'UniswapV2: LOCKED'
    stor13 = 0
    stor13 = 1
}

function burn(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor13 != 1:
        revert with 0, 'UniswapV2: LOCKED'
    stor13 = 0
    stor13 = 1
    return 0
}

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor13 != 1:
        revert with 0, 'UniswapV2: LOCKED'
    stor13 = 0
    stor13 = 1
    return 123
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] - arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getReserves() payable {
    require ext_code.size(pairAddress)
    staticcall pairAddress.balances(uint256 arg1) with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.balances(uint256 arg1) with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] << 144, ext_call.return_data[0] << 144, stor9
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] - arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'ds-math-sub-underflow'
        allowance[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(arg1)] - arg3 > balanceOf[address(arg1)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    if arg4 < block.timestamp:
        revert with 0, 'UniswapV2: EXPIRED'
    nonces[address(arg1)]++
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'UniswapV2: INVALID_SIGNATURE'
    if address(signer) != arg1:
        revert with 0, 'UniswapV2: INVALID_SIGNATURE'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}



}
