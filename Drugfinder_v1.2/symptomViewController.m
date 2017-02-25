//
//  symptomViewController.m
//  Drugfinder_v1.2
//
//  Created by Darsh Dixit on 20/12/16.
//  Copyright © 2016 Darsh Dixit. All rights reserved.
//

#import "symptomViewController.h"
#import "symptomchecker1ViewController.h"

@interface symptomViewController ()

@end

@implementation symptomViewController
@synthesize searchResult,searchbar,tableview;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *str1 = [[NSString alloc]initWithFormat:@"https://dr.apispark.net/v1/symptoms/?media=json"];
    NSURL *url = [[NSURL alloc]initWithString:str1];
    NSData *data = [[NSData alloc]initWithContentsOfURL:url];
    
    jsonarr = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    NSLog(@"%@",jsonarr);
    tablearray = jsonarr;
    searchResult = [NSMutableArray arrayWithCapacity:[tablearray count]];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if(searchenabled)
    {
        return searchResult.count;
    }
    else{
        return jsonarr.count;
    }
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    if(searchenabled)
    {
        cell.textLabel.font = [UIFont fontWithName:@"Times New Roman" size:18];
        cell.textLabel.text = [searchResult objectAtIndex:indexPath.row];
        cell.textLabel.textColor = [UIColor blackColor];
    }
    else
    {
        dic = tablearray[indexPath.row];
        
        NSString *str1 = [dic objectForKey:@"name"];
        //UILabel *lb1 = (UILabel *)[cell viewWithTag:10];
        cell.textLabel.text = str1;
        cell.textLabel.font = [UIFont fontWithName:@"Times New Roman" size:20];
        cell.textLabel.textColor = [UIColor yellowColor];
        //cell.textLabel.textColor =[UIColor redColor];
        //lb1.text =str1;
    }
    return cell;

}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    symptomchecker1ViewController *sym = [self.storyboard instantiateViewControllerWithIdentifier:@"symptom1"];
    sym.transfer = [jsonarr objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:sym animated:YES];
}
-(void)filterContentsForSearchText:(NSString*)searchText
{
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"SELF CONTAINS[cd] %@",searchText];
    searchResult = [[tablearray valueForKey:@"name"]filteredArrayUsingPredicate:resultPredicate];
    [tableview reloadData];
}
-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if(searchBar.text.length == 0)
    {
        searchenabled =NO;
        [tableview reloadData];
    }
    else
    {
        searchenabled =YES;
        [self filterContentsForSearchText:searchBar.text];
        [tableview reloadData];
    }
}
-(void)searchBarResultsListButtonClicked:(UISearchBar *)searchBar
{
    [searchBar resignFirstResponder];
    searchenabled = YES;
    [self filterContentsForSearchText:searchBar.text];
}
-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
{
    [searchBar resignFirstResponder];
    [searchBar setText:@""];
    searchenabled = NO;
    [tableview reloadData];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
