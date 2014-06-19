/**
 * @file
 *
 * graduation planner javascript functions.
 *
 * @todo Refactor
 *
 */


(function($) {
    Drupal.theme.prototype.ModalDialog = function () {
    var html = ''
    html += '  <div id="ctools-modal">'
    html += '    <div class="modal-dialog">' // panels-modal-content
    html += '      <div class="modal-header">';
    html += '        <a class="close" href="#">x';
    html += '        </a>';
    html += '        <h4 id="modal-title" class="modal-title"></h4>';
    html += '      </div>';
    html += '      <div id="modal-content" class="modal-content">';
    html += '      </div>';
    html += '    </div>';
    html += '  </div>';

    return html;
  }

    Drupal.behaviors.dragAndDrop = {
        attach: function(context, settings) {


            //console.log('attaching...');
            jQuery("ul.connectedSortable").droppable({
                tolerance: "touch",
                activeClass: "drop-hover",
                accept: function(draggable)
                {

                    var quarter = jQuery(this).attr("id").split('-');
                    return draggable.hasClass(quarter[1]);
                },
            });
            /*jQuery(".draggable").draggable({
             
             connectToSortable:".connectedSortable",
             revert:"invalid"
             });*/

            jQuery("ul.connectedSortable").sortable({
                connectWith: ".connectedSortable",
                //placeholder: "ui-state-highlight",
                revert: false,
                items: "li.draggable",
                cursor: "move",
                opacity: 0.8,
                start: function(event, ui)
                {
                    console.log('Start Started');
                    console.log(ui);
                    var quarter = jQuery(this).attr("id").split('-');
                    console.log(quarter[1]);
                    if (!ui.item.hasClass(quarter[1]))
                    {
                        ui.sender.sortable("cancel");
                        ui.sender.sortable("refresh");
                    }
                },
                update: function(event, ui) {
                    console.log("Update Started");
                    console.log(ui);
                    //var parent = ;
                    //console.log(parent);
                    var total_credits = 0;
                    var parent = jQuery(this);
                    //console.log(jQuery(this));
                    //console.log(jQuery(this).children('li:not(.total_credits)'));
                    //console.log(jQuery(ui.item).parent().find('li:not[.total_credits]'));
                    parent.children('li:not(.empty-placeholder)').each(function(e) {
                        //console.log(jQuery(this).attr('units'));
                        total_credits += parseInt(jQuery(this).attr('units'));
                        //console.log(total_credits);
                    }

                    );
                    //console.log(parent.children('li.total_credits'));
                    var total_credits_item = parent.parent().parent().children('div.total_credits').children('span.total_credits');
                    console.log(total_credits);
                    if (total_credits_item != 'undefined')
                    {
                        total_credits_item.html(total_credits);
                    }
                },
                remove: function(event, ui)
                {
                    //console.log(event);
                    jQuery(event.target).sortable("refresh");
                    //ui.sender.sortable("refresh");
                },
                stop: function(event, ui)
                {
                    console.log("Update Started");
                    console.log(ui);
                    //var parent = ;
                    //console.log(parent);
                    var total_credits = 0;
                    var parent = jQuery(this);
                    //console.log(jQuery(this));
                    //console.log(jQuery(this).children('li:not(.total_credits)'));
                    //console.log(jQuery(ui.item).parent().find('li:not[.total_credits]'));
                    parent.children('li:not(.empty-placeholder)').each(function(e) {
                        //console.log(jQuery(this).attr('units'));
                        total_credits += parseInt(jQuery(this).attr('units'));
                        //console.log(total_credits);
                    }

                    );
                    //console.log(parent.children('li.total_credits'));
                    var total_credits_item = parent.parent().parent().children('div.total_credits').children('span.total_credits');
                    console.log(total_credits);
                    if (total_credits_item != 'undefined')
                    {
                        total_credits_item.html(total_credits);
                    }
                },
                sort: function(event, ui)
                {
                    console.log("Sorting");
                },
                receive: function(event, ui) {
                    console.log('Receive Started');
                    var quarter = jQuery(this).attr("id").split('-');
                    if (!ui.item.hasClass(quarter[1]))
                    {
                        jQuery(ui.sender).sortable("cancel");
                        jQuery(ui.sender).sortable("refresh");
                    } else {
                        //parent.find('li.total_credits').html('Total Credits: '+total_credits);
                        //create the array that hold the positions...
                        var order = {};
                        //loop trought each li...
                        $('ul.connectedSortable li:not(.empty-placeholder)').each(function(e) {


                            var ul = $(this).parent().attr('id').split('-');
                            if (ul[0] != 'undefined' && ul[0] != '')
                            {
                                if (!order.hasOwnProperty(ul[0]))
                                {
                                    order[ul[0]] = {};
                                }
                                if (!order[ul[0]].hasOwnProperty(ul[1]))
                                {
                                    order[ul[0]][ul[1]] = [];
                                }
                                var class_id = $(this).attr('id').split('_');
                                order[ul[0]][ul[1]].push(class_id[1] + '_' + class_id[4]);
                            }
                            //add each li position to the array...
                            // the +1 is for make it start from 1 instead of 0
                            //order.push( + '-' + $(this).attr('id'));
                        });
                        // join the array as single variable...
                        //var positions = order.join(';');
                        //use the variable as you need!
                        //console.log(order);
                        var order_text = JSON.stringify(order, null, 2);
                        jQuery.ajax({
                            type: "POST",
                            url: Drupal.settings.graduation_planner_plan.plan_url,
                            data: {changes: order},
                            success: processDropSuccess
                        });
                        $('input[name="plan_changes"]').val(order_text);
                        // $.cookie( LI_POSITION , positions , { expires: 10 });
                    }
                }
            });


        }
    }
})(jQuery);


var draggable = new Drupal.ajax("#coordinator_list", jQuery("#coordinator_list"), {
    url: '',
    event: 'click'
});


function processDropSuccess(data)
{


    draggable.success(data);

}
(function($) {
    $.fn.update_totals = function(data) {
        var total_credits = 0;
        jQuery('ul.connectedSortable').each(function(e) {
            var this_ul_credits = 0;
            jQuery(this).children('li:not(.empty-placeholder)').each(function(e) {
                //console.log(jQuery(this).attr('units'));
                this_ul_credits += parseInt(jQuery(this).attr('units'));
                //console.log(total_credits);
            });
            var total_credits_item = jQuery(this).parent().parent().children('div.total_credits').children('span.total_credits');
            console.log(this_ul_credits);
            if (total_credits_item != 'undefined')
            {
                total_credits_item.html(this_ul_credits);
            }
        });

    };
})(jQuery);
