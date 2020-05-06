<?php
    
    if(isset($_POST['login-student-submit'])){

        require "dbh.inc.php";

        $username = $_POST['u_name'];
        $rollno = $_POST['roll_no'];
        $password = $_POST['pwdl'];

        if(empty($username)||empty($rollno)||empty($password)){
            header("Location: ../login.php?login-type=student&error=emptyfields");
            exit();
        }
        else if(!filter_var($username,FILTER_VALIDATE_EMAIL) && !preg_match("/^[a-z A-Z]*$/",$username)){
            header("Location: ../login.php?login-type=student&error=invalidusername&roll=$rollno");
            exit();
        }
        else{
            $sql = "SELECT * FROM users WHERE uname=? OR email=? AND rno=?;";
            $stmt = mysqli_stmt_init($conn);
            if(!mysqli_stmt_prepare($stmt,$sql)){
                header("Location: ../login.php?login-type=student&error=sqlerror");
                exit();
            }
            else{
                mysqli_stmt_bind_param($stmt,"sss",$username,$username,$rollno);
                mysqli_stmt_execute($stmt);
                $result = mysqli_stmt_get_result($stmt);
                if($row = mysqli_fetch_assoc($result)){
                    $pwdCheck = password_verify($password,$row['pwd']);
                    if($pwdCheck == false){
                        header("Location: ../login.php?login-type=student&error=wrongpassword&username=$username&roll=$rollno");
                        exit();
                    }
                    else if($pwdCheck == true){
                        session_start();
                        $_SESSION['uid']=$row['uname'];
                        $_SESSION['roll']=$row['rno'];
                        $_SESSION['role']='student';
                        $_SESSION['email_stu']=$row['email'];
                        $_SESSION['state']['1']=$row['update_status1'];
                        $_SESSION['state']['2']=$row['update_status2'];
                        $_SESSION['state']['3']=$row['update_status3'];

                        $sql = "SELECT Course_code FROM student_userdata WHERE roll_no='$rollno'";
                        if ($conn->query($sql) == TRUE) {
                            $result = $conn->query($sql);

                            

                            while($row = $result->fetch_assoc())
                            {   
                                $_SESSION['course_code']=$row["Course_code"];
                                    
                            }
                        }
                        else{
                            echo "session course code not found";
                        }
                        
                        
                        
                        header("Location: ../dashboard.php?login=successful");
                    }
                }
                else{
                    header("Location: ../login.php?error=nouser");
                    exit();
                }
            }
        }
        mysqli_stmt_close($stmt);
        mysqli_close($conn);
    }
    else if(isset($_POST['login-staff-submit']))
    {

        require "dbh.inc.php";

        $username = $_POST['uname'];
        $role = $_POST['role'];
        $password = $_POST['pwd'];

        if(empty($username)||empty($role)||empty($password)){
            header("Location: ../login.php?login-type=staff&error=emptyfields");
            exit();
        }
        else if(!filter_var($username,FILTER_VALIDATE_EMAIL) && !preg_match("/^[a-z A-Z]*$/",$username)){
            header("Location: ../login.php?login-type=staff&error=invalidusername");
            exit();
        } else{

            $sql = "SELECT * FROM users_staff WHERE staff_role=? AND (uname=? OR email=?);";
            $stmt = mysqli_stmt_init($conn);
            if(!mysqli_stmt_prepare($stmt,$sql)){
                header("Location: ../login.php?login-type=staff&error=sqlerror");
                exit();
            }
            else{
                mysqli_stmt_bind_param($stmt,"sss",$role,$username,$username);
                mysqli_stmt_execute($stmt);
                $result = mysqli_stmt_get_result($stmt);
                if($row = mysqli_fetch_assoc($result)){
                    $pwdCheck = password_verify($password,$row['pwd']);
                    if($pwdCheck == false){
                        header("Location: ../login.php?login-type=staff&error=wrongpassword&username=$username&roll=$rollno");
                        exit();
                    }else if($pwdCheck == true){
                        session_start();
                        $_SESSION['role']=$row['staff_role'];
                        $_SESSION['uid']=$row['uname'];
                        
                        if($_SESSION['role'] == 'admin'){
                            header("Location: ../admindashboard.php?login=success");
                            exit();
                        }else if($_SESSION['role'] == 'faculty'){
                            header("Location: ../facultydashboard.php?login=success");
                            exit();
                        }
                    }
                }else{
                    header("Location: ../login.php?login-type=staff&error=nouser");
                    exit();
                }
            }
        }

    }
    else{
        header("Location: ../login.php");
    }

?>
