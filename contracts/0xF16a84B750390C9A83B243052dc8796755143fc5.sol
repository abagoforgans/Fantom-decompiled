contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 100:
        return 0
    if arg1 <= 300:
        return 10^18
    if arg1 <= 500:
        return 5 * 10^18
    if arg1 <= 1000:
        return 10 * 10^18
    if arg1 <= 1500:
        return 15 * 10^18
    if arg1 <= 2000:
        return 30 * 10^18
    if arg1 <= 2500:
        return 5 * 10^18
    if arg1 <= 3000:
        return 8 * 10^18
    if arg1 <= 3500:
        return 10 * 10^18
    if arg1 <= 4000:
        return 20 * 10^18
    if arg1 <= 4500:
        return 30 * 10^18
    if arg1 <= 5000:
        return 50 * 10^18
    if arg1 <= 5500:
        return 100 * 10^18
    if arg1 <= 6000:
        return 150 * 10^18
    if arg1 <= 6500:
        return 200 * 10^18
    if arg1 > 7000:
        return 500 * 10^18
    return 300 * 10^18
}



}
