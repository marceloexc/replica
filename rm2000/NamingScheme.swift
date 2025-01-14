import Foundation

struct SampleFilenameStructure {
	var title: String = "Untitled"
	var tags: [String] = []
	var fileExtension: String = "aac" //could be an enum?
	
	init(sampleTitle: String, sampleTags: String) {
		self.title = sampleTitle.replacingOccurrences(of: " ", with: "")
		self.tags = sampleTags.components(separatedBy: ",")
	}
		
	func generatePreviewFilename() -> String {
		
		let stringedTagPiece = tags.joined(separator: "_")
		
		return "\(title)--\(stringedTagPiece).\(fileExtension)"
			
	}
}

func newSampleFilenameData(_ filenameString: String, _ tagString: String) -> SampleFilenameStructure {
	
	return SampleFilenameStructure(sampleTitle: filenameString, sampleTags: tagString)
}
