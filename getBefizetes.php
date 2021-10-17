<?php
require_once './dbConnect.php';
$result='';
$tagid = filter_input(INPUT_REQUEST, "tagid", FILTER_SANITIZE_NUMBER_INT);
if($tagid != null) {
    $sql = "SELECT `datum`,`osszeg` FROM `befiz` WHERE `azon` = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $tagid);
    $stmt->execute();
    $result = $stmt->get_result() or die("database error:". mysqli_error($conn));
    if($result != null && $result->num_rows > 0){
        $data = "<table>
            <caption>Eddigi befizetései</caption>
            <thead>
                <tr>
                    <th>Befizetés<br>dátuma</th>
                    <th>Befizetett<br>összeg</th>
                </tr>
            </thead>
            <tbody>";
        $sum = 0;
        while( $row = $result->fetch_assoc($result) ) {
            $data .= '<tr>
            <td>'.$row["datum"].'</td>
            <td class="jobbra">'.$row["osszeg"].' Ft</td>
        </tr>';
            $sum += $row["osszeg"];
        }
        $data .= '</tbody>
            <tfoot>
                <tr>Mindösszesen</tr>
                <tr class="jobbra">'.$sum.' Ft</tr>
            </tfoot>
        </table>';
        echo $data;
    } else {
        echo 'Nincs befizetése!';
    }
} else {
    echo 0;
}
