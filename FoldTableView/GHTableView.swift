//
//  GHTableView.swift
//  FoldTableView
//
//  Created by GK on 2019/7/18.
//  Copyright © 2019 com.gk. All rights reserved.
//

import UIKit

@objc public protocol GHTableViewDataSource: NSObjectProtocol {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int ) -> Int
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath, isExpanded: Bool) -> UITableViewCell
    func tableView(tableView: UITableView, collapseCell cell:UITableViewCell, withIndexPath indexPath: IndexPath)
    func tableView(tableView: UITableView, expandCell cell: UITableViewCell, withIndexPath indexPath: IndexPath)

   @objc  optional func numberOfSections(in tableView: UITableView) -> Int

   @objc  optional func numberofSectionsInTableView(tableView: UITableView) -> Int
   @objc  optional func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String
   @objc  optional func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String
   @objc  optional func tableView(_ tableView: UITableView, canEditRowAtIndexPath indexPath: IndexPath) -> Bool
   @objc  optional func tableView(_ tableView: UITableView, canMoveRowAtIndexPath indexPath: IndexPath) -> Bool
   @objc  optional func sectionIndexTitlesForTableView(_ tableView: UITableView) -> Array<String>
   @objc  optional func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title:String, atIndex index: Int) -> Int
   @objc  optional func tableView(_ tableView: UITableView, commitEditingStyle editingStyle: UITableViewCell.EditingStyle, forRowAtIndexPath indexPath: IndexPath)
   @objc optional func tableView(_ tableView: UITableView, moveRowAtIndexPath sourceIndexPath: IndexPath, toIndexPath destinationIndexPath: IndexPath)
}

@objc public protocol GHTableViewDelegate:  NSObjectProtocol{
    
    @objc optional func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
    
   
    @objc optional func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
    
  
    @objc optional func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
    
   
    @objc optional func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath)
    
   
    @objc optional func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
    

    @objc optional func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
    
    
    @objc optional func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    
    
    @objc optional func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    
  
    @objc optional func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
    
   
    @objc optional func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
    
 
    @objc optional func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
    
   
    @objc optional func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
    
 
    @objc optional func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    
    
    @objc optional func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
    
   
    @objc optional func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
    
   
    @objc optional func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool
    
   
    @objc optional func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath)
    
    
    @objc optional func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath)
    
    
    @objc optional func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?
    
  
    @objc optional func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath?
    
  
    @objc optional func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    
    
    @objc optional func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath)
    
    @objc optional func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle
    
   
    @objc optional func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String?
    
    @objc optional func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
    
    @available(iOS 11.0, *)
    @objc optional func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
    
    @available(iOS 11.0, *)
    @objc optional func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
    

    @objc optional func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool
    

    @objc optional func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath)
    

    @objc optional func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?)
    
  
    @objc optional func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath
    
 
    @objc optional func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int
    

    @objc optional func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool
    

    @objc optional func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool
    

    @objc optional func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?)
    
    @available(iOS 9.0, *)
    @objc optional func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool
    
    @available(iOS 9.0, *)
    @objc optional func tableView(_ tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool
    
    @available(iOS 9.0, *)
    @objc optional func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
    
    @available(iOS 9.0, *)
    @objc optional func indexPathForPreferredFocusedView(in tableView: UITableView) -> IndexPath?
    
    @available(iOS 11.0, *)
    @objc optional func tableView(_ tableView: UITableView, shouldSpringLoadRowAt indexPath: IndexPath, with context: UISpringLoadedInteractionContext) -> Bool
    
    
    @objc optional func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath, isExpanded: Bool) -> CGFloat;
}
class GHTableView: UITableView {
    weak var GHTableViewDelegate: GHTableViewDelegate?
    weak var GHTableViewDataSource: GHTableViewDataSource?
    
    private var selectedIndexPath: IndexPath?
    private var actionToTake: Int = 0
    private var expandedIndexPaths: Array<IndexPath> = [IndexPath]()
    
    //为true,仅仅一个cell能够被扩展
    var expandOnlyOneCell: Bool = true
    
    //为true, 会自动滑动到扩展的cell处
    var enableAutoScroll: Bool = true
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.delegate = self
        self.dataSource = self
    }
    //expand 或者 collapse 之间贴换的index path
    func toggleCellAtIndexPath(indexPath: IndexPath) {
        self.toggleCellForTableView(tableView: self, atIndexPath: indexPath)
    }
    
    //expand 指定index path的cell
    func expandCellAtIndexPath(indexPath: IndexPath) {
        var alreadyExpanded = false
        for anIndexPath in expandedIndexPaths {
            if anIndexPath.row == indexPath.row && anIndexPath.section == indexPath.section {
                alreadyExpanded = true
            }
        }
        if (alreadyExpanded) {
            return
        } else {
            self.toggleCellAtIndexPath(indexPath: indexPath)
        }
    }
    
    //collapse 指定indexpath的cell
    func collapseCellAtIndexPath(indexPath: IndexPath) {
        var alreadyExpanded = false
        for anIndexPath in expandedIndexPaths {
            if anIndexPath.row == indexPath.row && anIndexPath.section == indexPath.section {
                alreadyExpanded = true
            }
        }
        if !alreadyExpanded {
            return
        } else {
            self.toggleCellAtIndexPath(indexPath: indexPath)
        }
    }
    
    //Collapse 所有expand 的cell
    func collapseExpandedCells() {
        expandedIndexPaths.removeAll()
        self.selectedIndexPath = nil
        performSelector(onMainThread: #selector(reloadData), with: nil, waitUntilDone: true)
    }
}
extension GHTableView: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return GHTableViewDataSource!.tableView(tableView: tableView, numberOfRowsInSection: section)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        if let sections = GHTableViewDataSource!.numberOfSections?(in: tableView) {
            return sections
        }
//        if GHTableViewDataSource!.responds(to: #selector(numberOfSections(in:))) {
//            if let sections = GHTableViewDataSource!.numberOfSections?(in: tableView) {
//                return sections
//            }
//        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell
        
        if (self.expandOnlyOneCell) {
            if (actionToTake == 0) {
                if let selectedIndexPath = self.selectedIndexPath {
                    if (selectedIndexPath.row == indexPath.row && selectedIndexPath.section == indexPath.section) {
                        cell = GHTableViewDataSource!.tableView(tableView: tableView, cellForRowAtIndexPath: indexPath, isExpanded: true)
                        return cell
                    }
                }
                cell = GHTableViewDataSource!.tableView(tableView: tableView, cellForRowAtIndexPath: indexPath, isExpanded: false)
                return cell
            }

            if (actionToTake == -1) {
                cell = GHTableViewDataSource!.tableView(tableView: tableView, cellForRowAtIndexPath: indexPath, isExpanded: false)
                GHTableViewDataSource!.tableView(tableView: tableView, collapseCell: cell, withIndexPath: indexPath)
            } else {
                cell = GHTableViewDataSource!.tableView(tableView: tableView, cellForRowAtIndexPath: indexPath, isExpanded: true)
                GHTableViewDataSource!.tableView(tableView: tableView, expandCell: cell, withIndexPath: indexPath)
            }
            actionToTake = 0
        } else {
            if (actionToTake == 0) {
                var alreadExpanded = false
                for anIndexPath in expandedIndexPaths {
                    if (anIndexPath.row == indexPath.row && anIndexPath.section == indexPath.section) {
                        alreadExpanded = true
                    }
                }
                if (alreadExpanded) {
                    cell = GHTableViewDataSource!.tableView(tableView: tableView, cellForRowAtIndexPath: indexPath, isExpanded: true)
                } else {
                    cell = GHTableViewDataSource!.tableView(tableView: tableView, cellForRowAtIndexPath: indexPath, isExpanded: false)
                }
                return cell
            }
            
            if (actionToTake == -1) {
                cell = GHTableViewDataSource!.tableView(tableView: tableView, cellForRowAtIndexPath: indexPath, isExpanded: false)
                GHTableViewDataSource!.tableView(tableView: tableView, collapseCell: cell, withIndexPath: indexPath)
            } else {
                cell = GHTableViewDataSource!.tableView(tableView: tableView, cellForRowAtIndexPath: indexPath, isExpanded: true)
                GHTableViewDataSource!.tableView(tableView: tableView, expandCell: cell, withIndexPath: indexPath)
            }
            actionToTake = 0
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if GHTableViewDataSource!.responds(to: #selector(tableView(_:titleForHeaderInSection:))) {
            return GHTableViewDataSource!.tableView?(tableView, titleForHeaderInSection: section)
        }
        return nil
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if GHTableViewDataSource!.responds(to: #selector(tableView(_:titleForFooterInSection:))) {
            return GHTableViewDataSource!.tableView?(tableView, titleForFooterInSection: section)
        }
        return nil
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        if GHTableViewDataSource!.responds(to: #selector(tableView(_:canEditRowAt:))) {
            if let canEdit = GHTableViewDataSource?.tableView?(tableView, canEditRowAtIndexPath: indexPath) {
                return canEdit
            }
        }
        return false
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        if GHTableViewDataSource!.responds(to: #selector(tableView(_:canMoveRowAt:))) {
            if let canMove = GHTableViewDataSource?.tableView?(tableView, canMoveRowAtIndexPath: indexPath) {
                return canMove
            }
        }
        return false
    }
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        if GHTableViewDataSource!.responds(to: #selector(sectionIndexTitles(for:))) {
            return GHTableViewDataSource?.sectionIndexTitlesForTableView?(tableView)
        }
        return nil
    }
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        if GHTableViewDataSource!.responds(to: #selector(tableView(_:sectionForSectionIndexTitle:at:))) {
            if let section = GHTableViewDataSource?.tableView?(tableView, sectionForSectionIndexTitle: title, atIndex: index) {
                return section
            }
        }
        return 0
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if GHTableViewDataSource!.responds(to: #selector(tableView(_:commit:forRowAt:))) {
            GHTableViewDataSource?.tableView?(tableView, commitEditingStyle: editingStyle, forRowAtIndexPath: indexPath)
        }
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        if GHTableViewDataSource!.responds(to: #selector(tableView(_:moveRowAt:to:))) {
            GHTableViewDataSource?.tableView?(tableView, moveRowAtIndexPath: sourceIndexPath, toIndexPath: destinationIndexPath)
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (self.expandOnlyOneCell) {
            if let selectedIndexPath = self.selectedIndexPath {
                if (selectedIndexPath.row == indexPath.row && selectedIndexPath.section == indexPath.section) {
                    if let height = GHTableViewDelegate?.tableView?(tableView: tableView, heightForRowAtIndexPath: indexPath, isExpanded: true) {
                        return height
                    } else {
                        return 0
                    }
                }
            }
            if let height = GHTableViewDelegate?.tableView?(tableView: tableView, heightForRowAtIndexPath: indexPath, isExpanded: false) {
                return height
            }
            return 0
        } else {
            var alreadExpanded = false
            for anIndexPath in expandedIndexPaths {
                if (anIndexPath.row == indexPath.row && anIndexPath.section == indexPath.section) {
                    alreadExpanded = true
                }
            }
            if let height = GHTableViewDelegate?.tableView?(tableView: tableView, heightForRowAtIndexPath: indexPath, isExpanded: alreadExpanded) {
                return height
            } else {
                return 0
            }
        }
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return indexPath
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       toggleCellForTableView(tableView: tableView, atIndexPath: indexPath)
    }
    func toggleCellForTableView(tableView: UITableView, atIndexPath indexPath: IndexPath) {
        if (self.expandOnlyOneCell) {
            if let selectedIndexPath = selectedIndexPath {
                if selectedIndexPath.row != -1 && selectedIndexPath.row != -2 {
                    var dontExpandNewCell = false
                    if (selectedIndexPath.row == indexPath.row && selectedIndexPath.section == indexPath.section) {
                        dontExpandNewCell = true
                    }
                    
                    let tmp = IndexPath(row: selectedIndexPath.row, section: selectedIndexPath.section)
                    self.selectedIndexPath = IndexPath(row: -1, section: 0)
                    actionToTake = -1
                    
                    tableView.beginUpdates()
                    tableView.reloadRows(at: [tmp], with: UITableView.RowAnimation.automatic)
                    tableView.endUpdates()
                    
                    if dontExpandNewCell {
                        return
                    }
                }
            }
            actionToTake = 1;
            self.selectedIndexPath = indexPath
            tableView.beginUpdates()
            tableView.reloadRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
            tableView.endUpdates()
            
            if self.enableAutoScroll {
                tableView .scrollToRow(at: indexPath, at: UITableView.ScrollPosition.middle, animated: true)
            }
        } else {
            var alreadyExpanded = false
            
            var correspondingIndexPath: IndexPath?
            
            for anIndexPath in expandedIndexPaths {
                if anIndexPath.row == indexPath.row && anIndexPath.section == indexPath.section {
                    alreadyExpanded = true
                    correspondingIndexPath = IndexPath(row: indexPath.row, section: indexPath.section)
                }
            }
            if alreadyExpanded {
                actionToTake = -1
                expandedIndexPaths.remove(object: correspondingIndexPath)
                tableView.beginUpdates()
                tableView.reloadRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
                tableView.endUpdates()
            } else {
                actionToTake = 1
                expandedIndexPaths.append(indexPath)
                tableView.beginUpdates()
                tableView.reloadRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
                tableView.endUpdates()
                if self.enableAutoScroll {
                    tableView.scrollToRow(at: indexPath, at: UITableView.ScrollPosition.middle, animated: true)
                }
            }
        }
    }
   
}
extension GHTableView: UITableViewDelegate {
    /*s
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:willDisplay:forRowAt:))) {
            GHTableViewDelegate!.tableView?(tableView, willDisplay: cell, forRowAt: indexPath)
        }
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:willDisplayHeaderView:forSection:))) {
            GHTableViewDelegate!.tableView?(tableView, willDisplayHeaderView: view, forSection: section)
        }
    }
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:willDisplayFooterView:forSection:))) {
            GHTableViewDelegate!.tableView?(tableView, willDisplayFooterView: view, forSection: section)
        }
    }
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:didEndDisplaying:forRowAt:))) {
            GHTableViewDelegate!.tableView?(tableView, didEndDisplaying: cell, forRowAt: indexPath)
        }
    }
    func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:didEndDisplayingHeaderView:forSection:))) {
            GHTableViewDelegate!.tableView?(tableView, didEndDisplayingHeaderView: view, forSection: section)
        }
    }
    func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:willDisplayFooterView:forSection:))) {
            GHTableViewDelegate!.tableView?(tableView, willDisplayFooterView: view, forSection: section)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:heightForHeaderInSection:))) {
            if let height = GHTableViewDelegate!.tableView?(tableView, heightForHeaderInSection: section) {
                return height
            }
           return 0
        } else {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:heightForFooterInSection:))) {
            if let height = GHTableViewDelegate!.tableView?(tableView, heightForFooterInSection: section) {
                return height
            } else {
                return 0
            }
        } else {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:estimatedHeightForRowAt:))) {
            if let height = GHTableViewDelegate!.tableView?(tableView, estimatedHeightForRowAt: indexPath) {
                return height
            } else {
                return 0
            }
        } else {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:estimatedHeightForHeaderInSection:))) {
            if let height = GHTableViewDelegate!.tableView?(tableView, estimatedHeightForHeaderInSection: section) {
                return height
            } else {
                return 0
            }
        } else {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:estimatedHeightForFooterInSection:))) {
            if let height = GHTableViewDelegate!.tableView?(tableView, estimatedHeightForFooterInSection: section) {
                return height
            } else {
                return 0
            }
        } else {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:viewForFooterInSection:))) {
            return GHTableViewDelegate!.tableView?(tableView, viewForFooterInSection: section)
        } else {
            return nil
        }
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:viewForFooterInSection:))) {
            return GHTableViewDelegate!.tableView?(tableView, viewForFooterInSection: section)
        } else {
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:accessoryButtonTappedForRowWith:))) {
            GHTableViewDelegate!.tableView?(tableView, accessoryButtonTappedForRowWith: indexPath)
        }
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:shouldHighlightRowAt:))) {
            if let shouldHighlight =  GHTableViewDelegate!.tableView?(tableView, shouldHighlightRowAt: indexPath) {
                return shouldHighlight
            } else {
                return true
            }
        } else {
            return true
        }
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:didHighlightRowAt:))) {
            GHTableViewDelegate?.tableView?(tableView, didHighlightRowAt: indexPath)
        }
    }
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:didUnhighlightRowAt:))) {
            GHTableViewDelegate?.tableView?(tableView, didUnhighlightRowAt: indexPath)
        }
    }
    
    func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath? {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:willDeselectRowAt:))) {
            return GHTableViewDelegate?.tableView?(tableView, willDeselectRowAt: indexPath)
        }
        return nil
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:didDeselectRowAt:))) {
            GHTableViewDelegate?.tableView?(tableView, didDeselectRowAt: indexPath)
        }
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:editingStyleForRowAt:))){
            if let style = GHTableViewDelegate!.tableView?(tableView, editingStyleForRowAt: indexPath) {
                return style
            }
        }
        return UITableViewCell.EditingStyle.none
    }
 
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:titleForDeleteConfirmationButtonForRowAt:))) {
            return GHTableViewDelegate!.tableView?(tableView, titleForDeleteConfirmationButtonForRowAt: indexPath)
        }
        return nil
    }
    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:shouldIndentWhileEditingRowAt:))) {
            if let shouldIndext = GHTableViewDelegate!.tableView?(tableView, shouldIndentWhileEditingRowAt: indexPath) {
                return shouldIndext
            } else {
                return false
            }
        } else {
            return false
        }
    }
    func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath) {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:willBeginEditingRowAt:))) {
            GHTableViewDelegate!.tableView?(tableView, willBeginEditingRowAt: indexPath)
        }
    }
    func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?) {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:didEndEditingRowAt:))) {
            GHTableViewDelegate!.tableView?(tableView, didEndEditingRowAt: indexPath)
        }
    }
    func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath {
        if  GHTableViewDelegate!.responds(to: #selector(tableView(_:targetIndexPathForMoveFromRowAt:toProposedIndexPath:))){
            if let indexPath = GHTableViewDelegate!.tableView?(tableView, targetIndexPathForMoveFromRowAt: sourceIndexPath, toProposedIndexPath: proposedDestinationIndexPath) {
                return indexPath
            }
        }
        return IndexPath(row: 0, section: 0)
    }
    func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:indentationLevelForRowAt:))) {
            if let index = GHTableViewDelegate!.tableView?(tableView, indentationLevelForRowAt: indexPath) {
                return index
            }
        }
        return 0
    }
    func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:shouldShowMenuForRowAt:))) {
            if let shouldShow = GHTableViewDelegate!.tableView?(tableView, shouldShowMenuForRowAt: indexPath) {
                return shouldShow
            }
        }
        return true
    }
    func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:canPerformAction:forRowAt:withSender:))) {
            if let canPerform = GHTableViewDelegate!.tableView?(tableView, canPerformAction: action, forRowAt: indexPath, withSender: sender) {
                return canPerform
            }
        }
        return false
    }
    func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:performAction:forRowAt:withSender:))) {
             GHTableViewDelegate!.tableView?(tableView, performAction: action, forRowAt: indexPath, withSender: sender)
        }
    }
    */
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if GHTableViewDelegate!.responds(to: #selector(tableView(_:heightForHeaderInSection:))) {
            if let height = GHTableViewDelegate!.tableView?(tableView, heightForHeaderInSection: section) {
                return height
            }
            return 0
        } else {
            return 0
        }
    }
}
