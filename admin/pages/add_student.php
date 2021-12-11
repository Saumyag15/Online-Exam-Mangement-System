<!--Body Starts Here-->
        <div class="main">
            <div class="content">
                <div class="report">
                    
                    <form method="post" action="" class="forms">
                        <h2>Add Student</h2>
                        <?php 
                            if(isset($_SESSION['validation']))
                            {
                                echo $_SESSION['validation'];
                                unset($_SESSION['validation']);
                            }
                            if(isset($_SESSION['add']))
                            {
                                echo $_SESSION['add'];
                                unset($_SESSION['add']);
                            }
                        ?>
                        <span class="name">First Name</span> 
                        <input type="text" name="first_name" placeholder="First Name" required="true" /> <br />
                        
                        <span class="name">Last Name</span>
                        <input type="text" name="last_name" placeholder="Last Name" required="true" /><br />
                        
                        <span class="name">Email</span>
                        <input type="email" name="email" placeholder="Email Address" required="true" /><br />
                        
                        <span class="name">Username</span>
                        <input type="text" name="username" placeholder="Username" required="true" /><br />
                        
                        <span class="name">Password</span>
                        <input type="text" name="password" placeholder="Password" required="true" /><br />
                        
                        <span class="name">Contact</span>
                        <input type="tel" name="contact" placeholder="Contact Number" /><br />
                        
                        <span class="name">Gender</span>
                        <input type="radio" name="gender" value="male" /> Male 
                        <input type="radio" name="gender" value="female" /> Female 
                        <input type="radio" name="gender" value="other" /> Other
                        <br />
                        
                        <span class="name">Exam</span>
                        <select name="exam">
                            <?php 
                                //Get Exam from database
                                $tbl_name="tbl_exam";
                                $where="is_active='yes'";
                                $query=$obj->select_data($tbl_name,$where);
                                $res=$obj->execute_query($conn,$query);
                                $count_rows=$obj->num_rows($res);
                                if($count_rows>0)
                                {
                                    while($row=$obj->fetch_data($res))
                                    {
                                        $exam_id=$row['exam_id'];
                                        $exam_type=$row['exam_type'];
                                        ?>
                                        <option value="<?php echo $exam_id; ?>"><?php echo $exam_type; ?></option>
                                        <?php
                                    }
                                }
                                else
                                {
                                    echo("<option value='none'>NONE</option>");
                                }
                            ?>
                        </select>
                        <br />
                        
                        <span class="name">Is Active?</span>
                        <input type="radio" name="is_active" value="yes" /> Yes 
                        <input type="radio" name="is_active" value="no" /> No
                        <br />
                        
                        <input type="submit" name="submit" value="Add Student" class="btn-add" style="margin-left: 15%;" />
                        <a href="<?php echo SITEURL; ?>admin/index.php?page=students"><button type="button" class="btn-delete">Cancel</button></a>
                    </form>
                    <?php 
                        if(isset($_POST['submit']))
                        {
                            //Getting Values from the form
                            $first_name=$obj->sanitize($conn,$_POST['first_name']);
                            $last_name=$obj->sanitize($conn,$_POST['last_name']);
                            $email=$obj->sanitize($conn,$_POST['email']);
                            $username=$obj->sanitize($conn,$_POST['username']);
                            $password=$obj->sanitize($conn,$_POST['password']);
                            $contact=$obj->sanitize($conn,$_POST['contact']);
                            if(isset($_POST['gender']))
                            {
                                $gender=$obj->sanitize($conn,$_POST['gender']);
                            }
                            else
                            {
                                $gender='male';
                            }
                            
                            $exam=$obj->sanitize($conn,$_POST['exam']);
                            if(isset($_POST['is_active']))
                            {
                                $is_active=$_POST['is_active'];
                            }
                            else
                            {
                                $is_active='yes';
                            }
                            $added_date=date('Y-m-d');
                            
                            //Backend Validation, Checking whether the input fields are empty or not
                            if(($first_name||$last_name||$email||$username||$password)==null)
                            {
                                //SET SSESSION Message
                                $_SESSION['validation']="<div class='error'>First Name or Last Name, or Email or Username or Password is Empty.</div>";
                                header('location:'.SITEURL.'admin/index.php?page=add_student');
                            }
                            
                            //Addding to the database
                            $tbl_name='tbl_student';
                            $data="first_name='$first_name',
                                    last_name='$last_name',
                                    email='$email',
                                    username='$username',
                                    password='$password',
                                    contact='$contact',
                                    gender='$gender',
                                    exam='$exam',
                                    is_active='$is_active',
                                    added_date='$added_date',
                                    updated_date=''";
                            $query=$obj->insert_data($tbl_name,$data);
                            $res=$obj->execute_query($conn,$query);
                            if($res===true)
                            {
                                $_SESSION['add']="<div class='success'>New student successfully added.</div>";
                                header('location:'.SITEURL.'admin/index.php?page=students');
                            }
                            else
                            {
                                $_SESSION['add']="<div class='error'>Failed to add new student. Try again.</div>";
                                header('location:'.SITEURL.'admin/index.php?page=add_student');
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
        <!--Body Ends Here-->