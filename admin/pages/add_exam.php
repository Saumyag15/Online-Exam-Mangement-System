<!--Body Starts Here-->
        <div class="main">
            <div class="content">
                <div class="report">
                    
                    <form method="post" action="" class="forms">
                        <h2>Add Exam</h2>
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
                        <span class="name">Exam Title</span> 
                        <input type="text" name="exam_type" placeholder="Exam Title" required="true" /> <br />
                        
                        <span class="name">Time Duration</span>
                        <input type="text" name="time_duration" placeholder="Time Duration in Minutes" required="true" /><br />
                        
                        <span class="name">Questions/Set</span>
                        <input type="text" name="qns_per_page" placeholder="Total Questions Per Page" required="true" /><br />
                        
                        <span class="name">Total English Qns</span>
                        <input type="number" name="total_english_qns" placeholder="Total Number of English Questions" required="true" /><br />
                        
                        <span class="name">Total Math Qns</span>
                        <input type="number" name="total_math_qns" placeholder="Total Number of Math Questions" /><br />
                        
                        <span class="name">Is Active?</span>
                        <input type="radio" name="is_active" value="yes" /> Yes 
                        <input type="radio" name="is_active" value="no" /> No
                        <br />
                        
                        <input type="submit" name="submit" value="Add Exam" class="btn-add" style="margin-left: 15%;" />
                        <a href="<?php echo SITEURL; ?>admin/index.php?page=exams">
                            <button type="button" class="btn-delete">Cancel</button>
                        </a>
                    </form>
                    
                    <?php 
                        if(isset($_POST['submit']))
                        {
                            //echo "Clicked";
                            //Get Values froom the form
                            $exam_type=$obj->sanitize($conn,$_POST['exam_type']);
                            $time_duration=$obj->sanitize($conn,$_POST['time_duration']);
                            $qns_per_page=$obj->sanitize($conn,$_POST['qns_per_page']);
                            $total_english=$obj->sanitize($conn,$_POST['total_english_qns']);
                            $total_math=$obj->sanitize($conn,$_POST['total_math_qns']);
                            if(isset($_POST['is_active']))
                            {
                                $is_active=$obj->sanitize($conn,$_POST['is_active']);
                            }
                            else
                            {
                                $is_active="yes";
                            }
                            $added_date=date('Y-m-d');
                            
                            //Normal PHP Validation
                            if(($exam_type=="")||($time_duration=="")||($qns_per_page==""))
                            {
                                $_SESSION['validation']="<div class='error'>exam name or Time Duration or Question Per Page is Empty.</div>";
                                header('location:'.SITEURL.'admin/index.php?page=add_exam');
                            }
                            //Inserting into the database
                            $tbl_name='tbl_exam';
                            $data="exam_type='$exam_type',
                                    time_duration='$time_duration',
                                    qns_per_set='$qns_per_page',
                                    total_english='$total_english',
                                    total_math='$total_math',
                                    is_active='$is_active',
                                    added_date='$added_date',
                                    updated_date=''";
                            //Query to Insert Data
                            $query=$obj->insert_data($tbl_name,$data);
                            $res=$obj->execute_query($conn,$query);
                            if($res===true)
                            {
                                //Success Message
                                $_SESSION['add']="<div class='success'>New exam successfully added.</div>";
                                header('location:'.SITEURL.'admin/index.php?page=exams');
                            }
                            else
                            {
                                //FAil Message
                                $_SESSION['add']="<div class='error'>Failed to add new exam. Try again.</div>";
                                header('location:'.SITEURL.'admin/index.php?page=add_exam');
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
        <!--Body Ends Here-->