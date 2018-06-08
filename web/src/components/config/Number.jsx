import React, { Component } from 'react'
import { Slider, InputNumber, Row, Col } from 'antd';

export default class extends Component {
  handleChange = (value) => {
    const { onChange, label, validator } = this.props
    if (validator && !validator(value)) {
      return
    }
    onChange && onChange(label, parseFloat(value))
  }

  render() {
    const { label, value, max = 500, min = -500, step = 1 } = this.props
    return (
      <Row gutter={16} className="line">
        <Col span={4}>
          <b>{label}</b>
        </Col>
        <Col span={12}>
          <Slider
            min={min}
            max={max}
            step={step}
            onChange={this.handleChange}
            value={value}
          />
        </Col>
        <Col span={5}>
          <InputNumber
            style={{ width: '100%' }}
            min={min}
            max={max}
            onChange={this.handleChange}
            value={value}
          />
        </Col>
      </Row>
    )
  }
}