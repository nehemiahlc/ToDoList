//
//  ToDoCellTableViewCell.swift
//  ToDoList
//
//  Created by Nehemiah Chandler on 7/19/24.
//

import UIKit

protocol ToDoCellDelegate: AnyObject {
    func checkmarkTapped(sender: ToDoCellTableViewCell)
}

class ToDoCellTableViewCell: UITableViewCell {
    weak var delegate: ToDoCellDelegate?
    
    @IBOutlet var isCompleteButton: UIButton!
    @IBOutlet var titleLabel: UILabel!
    
    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
