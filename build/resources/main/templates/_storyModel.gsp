<!-- Modal -->
<div id="storyModel${storyId}" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title text-center">First Date</h4>
            </div>

            <div class="modal-body">
                <div class="row">
                    <asset:image src="${storyImage}" class="modal-image col-lg-6"/>
                    <div class="model-content col-lg-6">
                        <p class="modal-text">${storyContent}</p>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>