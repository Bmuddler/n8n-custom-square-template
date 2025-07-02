
import { INodeType, INodeTypeDescription } from 'n8n-workflow';

export class Square implements INodeType {
	description: INodeTypeDescription = {
		displayName: 'Square',
		name: 'square',
		group: ['transform'],
		version: 1,
		description: 'Interact with Square API',
		defaults: {
			name: 'Square',
		},
		inputs: ['main'],
		outputs: ['main'],
		properties: [
			{
				displayName: 'Example Field',
				name: 'exampleField',
				type: 'string',
				default: '',
			},
		],
	};

	async execute() {
		return this.helpers.returnJsonArray([{ message: 'Hello from Square Node!' }]);
	}
}
