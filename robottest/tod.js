/*const A = () => {
    useEffect(() => {
        console.log('A')
    }, [])
    return <></>
}
const B = () => {
    useEffect(() => {
        console.log('B')
    }, [])
    return <C />
}
const C = () => {
    useEffect(() => {
        console.log('C')
    }, [])
    return <></>
}
export default function App() {
    return (
        <>
            <A />
            <B />
        </>
    )
}*/
const CoinStatus = () => {
    const [coin, isLoading, isError] =
        useCoin()
    if (isLoading) {
        return <Spinning />
    }
    if (isError) {
        return <ErrorStatus error = { error } />
    }
    return (
        <StatusContainer>
            <CoinText>{coin}</CoinText>
            {coin > 0 && <GoToShopButton />}
        </StatusContainer>
    )
}

