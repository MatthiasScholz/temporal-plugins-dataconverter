// https://github.com/temporalio/samples-go/tree/main/encryption
package main

import (
	"github.com/hashicorp/go-plugin"

	"go.temporal.io/sdk/converter"
	cliplugin "github.com/temporalio/tctl/cli/plugin"

	"github.com/MatthiasScholz/temporal-plugins-dataconverter/internal/pkg"
)

func main() {
	var pluginMap = map[string]plugin.Plugin{
		cliplugin.DataConverterPluginType: &cliplugin.DataConverterPlugin{
			Impl: encryption.NewEncryptionDataConverter(
				converter.GetDefaultDataConverter(),
				encryption.DataConverterOptions{Compress: true},
			),
		},
	}

	plugin.Serve(&plugin.ServeConfig{
		HandshakeConfig: cliplugin.PluginHandshakeConfig,
		Plugins:         pluginMap,
	})
}
